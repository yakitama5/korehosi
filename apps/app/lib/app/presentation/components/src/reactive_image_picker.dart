import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

import '../../../application/model/item/selected_image_model.dart';
import '../../helper/permission_helper.dart';
import 'bottom_sheet_column.dart';

typedef InputButtonBuilder = Widget Function(VoidCallback onPressed);
typedef SelectedBuilder = Widget Function(
  VoidCallback onPressed,
  SelectedImageModel file,
);

class ReactiveImagePicker
    extends ReactiveFormField<SelectedImageModel, SelectedImageModel> {
  ReactiveImagePicker({
    super.key,
    required String formControlName,
    InputButtonBuilder? inputBuilder,
    SelectedBuilder? selectedBuilder,
    VoidCallback? onSelected,
    VoidCallback? onEditted,
    VoidCallback? onDeleted,
  }) : super(
          formControlName: formControlName,
          builder: (
            ReactiveFormFieldState<SelectedImageModel, SelectedImageModel>
                field,
          ) =>
              _Form(
            field,
            inputBuilder,
            selectedBuilder,
            onSelected,
            onEditted,
            onDeleted,
          ),
        );

  @override
  ReactiveFormFieldState<SelectedImageModel, SelectedImageModel>
      createState() =>
          ReactiveFormFieldState<SelectedImageModel, SelectedImageModel>();
}

class _Form extends HookConsumerWidget {
  const _Form(
    this.field,
    this.inputBuilder,
    this.selectedBuilder,
    this.onSelected,
    this.onEditted,
    this.onDeleted,
  );

  final ReactiveFormFieldState<SelectedImageModel, SelectedImageModel> field;
  final InputButtonBuilder? inputBuilder;
  final SelectedBuilder? selectedBuilder;
  final VoidCallback? onSelected;
  final VoidCallback? onEditted;
  final VoidCallback? onDeleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = field.value;
    if (file == null) {
      return inputBuilder?.call(() => _handlePressed(context, ref)) ??
          const SizedBox.shrink();
    } else {
      return selectedBuilder?.call(
            () => _handlePressed(context, ref),
            file,
          ) ??
          const SizedBox.shrink();
    }
  }

  Future<void> _handlePressed(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final hasFile = field.value != null;

    // ユーザーに選択を促す
    final editSource = await _SourceSelectBottomSheet.show(
      context: context,
      showDelete: hasFile,
    );
    switch (editSource) {
      case null:
        // 選択しなかった場合は処理終了
        return;
      case _EditSource.camera:
        if (context.mounted) {
          await _pick(context, ref, ImageSource.camera);
        }
        return;
      case _EditSource.gallery:
        if (context.mounted) {
          await _pick(context, ref, ImageSource.gallery);
        }
        return;
      case _EditSource.delete:
        if (context.mounted) {
          _delete(context, ref);
        }
        return;
    }
  }

  Future<void> _pick(
    BuildContext context,
    WidgetRef ref,
    ImageSource imageSource,
  ) async {
    // 権限確認
    final isGranted =
        await requestPermissionPickImage(context, ref, imageSource);
    if (!isGranted) {
      // 許可されてなければ何もしない
      return;
    }

    // 画像の取得
    final file = await ImagePicker().pickImage(source: imageSource);
    if (file == null) {
      // 選択されてなければ何もしない
      return;
    }

    // Formへの反映
    final hasValue = field.value != null;
    final model = SelectedImageModel(uploadFile: file);
    field.didChange(model);
    if (hasValue) {
      onEditted?.call();
    } else {
      onSelected?.call();
    }
  }

  void _delete(BuildContext context, WidgetRef ref) {
    field.didChange(null);
    onDeleted?.call();
  }
}

enum _EditSource {
  camera,
  gallery,
  delete,
}

class _SourceSelectBottomSheet extends HookConsumerWidget {
  const _SourceSelectBottomSheet({this.showDelete = false});

  static Future<_EditSource?> show({
    required BuildContext context,
    bool? showDelete,
  }) =>
      showModalBottomSheet<_EditSource>(
        context: context,
        useSafeArea: true,
        builder: (context) => _SourceSelectBottomSheet(showDelete: showDelete),
      );

  final bool? showDelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomSheetColumn(
      children: [
        // Web版はカメラがないので非表示
        if (!kIsWeb)
          ListTile(
            leading: const Icon(Icons.add_a_photo),
            title: Text(i18n.app.shoot),
            onTap: () => Navigator.pop(context, _EditSource.camera),
          ),
        ListTile(
          leading: const Icon(Icons.photo_library),
          title: Text(i18n.app.chooseFromLibrary),
          onTap: () => Navigator.pop(context, _EditSource.gallery),
        ),
        if (showDelete == true)
          ListTile(
            leading: const Icon(Icons.delete),
            title: Text(i18n.app.delete),
            onTap: () => Navigator.pop(context, _EditSource.delete),
          ),
      ],
    );
  }
}
