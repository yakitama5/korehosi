import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nested/nested.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/config/item_config.dart';
import '../../../application/model/dialog_result.dart';
import '../../../application/model/item/item_form_model.dart';
import '../../../application/model/item/selected_image_model.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/item_usecase.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
import '../../../application/usecase/item/state/wanter_name_suggestion.dart';
import '../../../domain/item/entity/item.dart';
import '../../components/importer.dart';
import '../../components/src/reactive_form_dirty_confirm_pop_scope.dart';
import '../../hooks/use_l10n.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import '../presentation_mixin.dart';
import 'components/empty_item_image.dart';
import 'components/item_image_carousel_slider.dart';
import 'components/rating_icon.dart';

class ItemEditPage extends HookConsumerWidget with RouteAware {
  const ItemEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final itemId = ref.watch(ItemDetailProviders.itemIdProvider);
    final item = ref.watch(ItemDetailProviders.itemProvider);

    return item.when(
      data: (itemData) => _ItemForm(
        item: itemData,
        titleData: itemId == null
            ? l10n.createPageTitle(l10n.wishList)
            : l10n.editPageTitle(l10n.wishList),
      ),
      error: ErrorView.new,
      // すぐ表示されるはずなので、何も表示しない
      loading: () => const SizedBox.shrink(),
    );
  }
}

/// 入力フォーム
class _ItemForm extends HookConsumerWidget {
  const _ItemForm({
    this.titleData,
    this.item,
  });

  final String? titleData;
  final Item? item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = _createModel();

    return ItemFormModelFormBuilder(
      model: model,
      builder: (context, formModel, child) => Nested(
        children: const [
          ReactiveFormDirtyConfirmPopScope(),
          UnfocusOnTap(),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(titleData ?? ''),
            actions: [
              const _Submit(),
              const Gap(8),
              if (item != null) const _DeleteButton(),
            ],
          ),
          body: SingleChildScrollView(
            child: PagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _ImageFields(),
                  const Gap(16),
                  const _NameField(),
                  const Gap(16),
                  const _WanterNameField(),
                  const _WishRankField(),
                  const Gap(64),
                  const _WishSeasonField(),
                  const Gap(16),
                  const _UrlFields(),
                  _UrlAddButton(
                    onAdd: () {
                      formModel.addUrlsItem('');
                    },
                  ),
                  const Gap(16),
                  const _MemoField(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// FormGroupを生成する
  ItemFormModel _createModel() => ItemFormModel(
        name: item?.name,
        wishRank: item?.wishRank,
        wanterName: item?.wanterName,
        wishSeason: item?.wishSeason,
        memo: item?.memo,
        // 最低1つの要素を表示
        urls: (item?.urls?.isEmpty ?? true) ? [''] : item?.urls,
        images: [
          // 新規アップロード用に項目を+1定義
          ...item?.imagesPath
                  // 画像はアップロード済のものと分けて管理するためモデルに変換
                  ?.map((path) => SelectedImageModel(imagePath: path))
                  .toList() ??
              [],
          null,
        ],
      );
}

/// 保存ボタン
class _Submit extends HookConsumerWidget with PresentationMixin {
  const _Submit();

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      SaveButton(onPressesd: () => onSave(context, ref));

  Future<void> onSave(BuildContext context, WidgetRef ref) async {
    await execute(
      context,
      action: () async {
        // 入力チェック判定
        final formModel = ReactiveItemFormModelForm.of(context)!;
        if (formModel.form.invalid) {
          formModel.form.markAllAsTouched();
          return;
        }

        // 入力値を取得
        final name = formModel.nameControl?.value;
        final wanterName = formModel.wanterNameControl?.value;
        final wishRank = formModel.wishRankControl?.value;
        final wishSeason = formModel.wishSeasonControl?.value;
        final urls = formModel.urlsControl?.controls
            .map((e) => e.value)
            .whereNotNull()
            .toList();
        final memo = formModel.memoControl?.value;
        final selectedImages = formModel.imagesControl?.controls
            .map((e) => e.value)
            .whereNotNull()
            .toList();

        // 登録 or 更新
        final itemId = ref.read(ItemDetailProviders.itemIdProvider);
        final isAdd = itemId == null;
        final usecase = ref.read(itemUsecaseProvider);
        if (isAdd) {
          await usecase.add(
            selectedImages: selectedImages,
            name: name!,
            wanterName: wanterName,
            wishRank: wishRank!,
            wishSeason: wishSeason,
            urls: urls,
            memo: memo,
          );
        } else {
          await usecase.update(
            itemId: itemId,
            selectedImages: selectedImages,
            name: name!,
            wanterName: wanterName,
            wishRank: wishRank!,
            wishSeason: wishSeason,
            urls: urls,
            memo: memo,
          );
        }

        // 遷移元にポップ
        if (context.mounted) {
          context.pop();
        }
      },
    );
  }
}

/// 削除ボタン
class _DeleteButton extends HookConsumerWidget with PresentationMixin {
  const _DeleteButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) => DeleteButton(
        onPressed: () => onDelete(context, ref),
      );

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final l10n = ref.read(l10nProvider);

    final item = await ref.read(ItemDetailProviders.itemProvider.future);
    if (!context.mounted) {
      return;
    }
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.deleteConfirmTitle,
      message: l10n.deleteCofirmMessage(item?.name ?? ''),
    );
    if (result != DialogResult.ok) {
      return;
    }

    // 削除処理
    if (!context.mounted) {
      return;
    }
    await execute(
      context,
      action: () async {
        final itemId = ref.read(ItemDetailProviders.itemIdProvider);
        await ref.read(itemUsecaseProvider).delete(itemId: itemId!);

        // 一覧画面に戻る
        if (context.mounted) {
          const ItemsRouteData().go(context);
        }
      },
      successMessage: l10n.completeDeleteMessage,
    );
  }
}

/// 欲しい物の画像一覧
class _ImageFields extends HookConsumerWidget {
  const _ImageFields();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formModel = ReactiveItemFormModelForm.of(context)!;

    return ReactiveFormArray<SelectedImageModel>(
      formArray: formModel.imagesControl,
      builder: (context, formArray, child) {
        final radius = BorderRadius.circular(16);

        return ItemImageCarouselSlider(
          items: formArray.controls
              .mapIndexed(
                (i, key) => ReactiveImagePicker(
                  key: ObjectKey(formArray.control('$i')),
                  formControlName: '$i',
                  inputBuilder: (onPressed) => InkWell(
                    borderRadius: radius,
                    onTap: onPressed,
                    child: EmptyItemImage(
                      iconData: MdiIcons.imagePlus,
                      radius: radius,
                    ),
                  ),
                  onSelected: () => formModel.addImagesItem(null),
                  onDeleted: () => formModel.imagesControl?.removeAt(i),
                  selectedBuilder: (onPressed, selectedFile) {
                    final uploaded = selectedFile.imagePath != null;
                    return InkWell(
                      borderRadius: radius,
                      onTap: onPressed,
                      // ファイル種別に応じてWidgetを切り替える
                      child: uploaded
                          ? StorageImage(imagePath: selectedFile.imagePath)
                          : XFileImage(xFile: selectedFile.uploadFile!),
                    );
                  },
                ),
              )
              .toList(),
        );
      },
    );
  }
}

/// 欲しい物の名称
class _NameField extends HookConsumerWidget {
  const _NameField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return ReactiveOutlinedTextField<String>(
      formControlName: ItemFormModelForm.nameControlName,
      labelText: l10n.merchandiseName,
      maxLength: itemConfig.maxNameLength,
      isRequired: true,
    );
  }
}

class _WanterNameField extends HookConsumerWidget {
  const _WanterNameField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    // グループ内のユーザーを候補に上げる
    final userNames = ref
        .watch(wanterNameSuggestionProvider)
        .value
        ?.whereNotNull()
        // 重複の削除
        .toSet()
        .toList();

    return ReactiveOutlinedRawAutocomplete(
      formControlName: ItemFormModelForm.wanterNameControlName,
      labelText: l10n.wanterName,
      maxLength: itemConfig.maxWanterNameLength,
      options: userNames ?? [],
    );
  }
}

class _WishRankField extends HookConsumerWidget {
  const _WishRankField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return ReactiveRatingBarBuilder<double>(
      formControlName: ItemFormModelForm.wishRankControlName,
      decoration: InputDecoration(
        label: Text(l10n.wishRank),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
      allowHalfRating: true,
      itemBuilder: (BuildContext context, int index) => const RatingIcon(),
    );
  }
}

class _WishSeasonField extends HookConsumerWidget {
  const _WishSeasonField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return ReactiveOutlinedTextField<String>(
      formControlName: ItemFormModelForm.wishSeasonControlName,
      labelText: l10n.wishSeasonLabel,
      hintText: l10n.wishSeasonHint,
      maxLength: itemConfig.maxWishSeasonLength,
    );
  }
}

class _UrlFields extends HookConsumerWidget {
  const _UrlFields();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final formModel = ReactiveItemFormModelForm.of(context)!;

    return ReactiveItemFormModelFormArrayBuilder(
      formControl: formModel.urlsControl,
      itemBuilder: (context, i, item, formModel) =>
          ReactiveOutlinedTextField<String>(
        key: ObjectKey(formModel.urlsControl?.control('$i')),
        formControlName: '$i',
        labelText: l10n.url,
        maxLength: itemConfig.maxUrlLength,
        textInputType: TextInputType.url,
        counterText: '',
      ),
    );
  }
}

class _UrlAddButton extends HookConsumerWidget {
  const _UrlAddButton({required this.onAdd});

  final void Function() onAdd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return TextButton.icon(
      onPressed: onAdd,
      icon: const Icon(Icons.add),
      label: Text(l10n.addUrl),
    );
  }
}

class _MemoField extends HookConsumerWidget {
  const _MemoField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return ReactiveOutlinedTextField<String>(
      formControlName: ItemFormModelForm.memoControlName,
      labelText: l10n.memo,
      maxLines: 5,
      maxLength: itemConfig.maxMemoLength,
    );
  }
}
