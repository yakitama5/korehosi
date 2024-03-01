import 'package:collection/collection.dart';
import 'package:family_wish_list/app/application/model/item/form/item_form_model.dart';
import 'package:family_wish_list/app/utils/uuid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/config/item_config.dart';
import '../../../application/model/dialog_result.dart';
import '../../../application/model/form_array_widget_keys.dart';
import '../../../application/model/item/selected_image_model.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/item_usecase.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
import '../../../application/usecase/item/state/wanter_name_suggestion.dart';
import '../../../domain/item/entity/item.dart';
import '../../components/importer.dart';
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
    final l10n = useL10n();
    final urlWidgetKeys = useState(const FormArrayWidgetKeys([]));
    final imageWidgetKeys = useState(const FormArrayWidgetKeys([]));

    // TODO(yakitama5): Generatorに書き換えていく
    return ItemFormModelFormBuilder(
      model: _createModel(),
      builder: (context, formModel, child) => PopScope(
        canPop: false,
        onPopInvoked: (didPop) => _onWillPopScope(context, l10n, didPop),
        child: UnfocusOnTap(
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
                    _ImageFields(
                      imageWidgetKeys: imageWidgetKeys.value.keys,
                      onSelected: (i) {
                        imageWidgetKeys.value =
                            imageWidgetKeys.value.add(generatUuid());
                        formModel.addImagesItem(null);
                      },
                      onDeleted: (i) {
                        imageWidgetKeys.value =
                            imageWidgetKeys.value.removeAt(i);
                        formModel.imagesControl?.removeAt(i);
                      },
                    ),
                    const Gap(16),
                    const _NameField(),
                    const Gap(16),
                    const _WanterNameField(),
                    const _WishRankField(),
                    const Gap(64),
                    const _WishSeasonField(),
                    const Gap(16),
                    _UrlFields(urlWidgetKeys: urlWidgetKeys.value.keys),
                    _UrlAddButton(
                      onAdd: () {
                        urlWidgetKeys.value =
                            urlWidgetKeys.value.add(generatUuid());
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
        urls: item?.urls,
        // 画像はアップロード済のものと分けて管理するためモデルに変換
        images: item?.imagesPath
            ?.map((path) => SelectedImageModel(imagePath: path))
            .toList(),
      );

  Future<void> _onWillPopScope(
    BuildContext context,
    L10n l10n,
    bool didPop,
  ) async {
    // Notes: 移行ガイドに沿って変更
    // https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
    if (didPop) {
      return;
    }

    // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら変更する
    // NavigationBarを検知出来ないのは一旦保留
    // 内容が変更されていなければ閉じる
    final dirty = ReactiveItemFormModelForm.of(context)?.form.dirty;
    if (dirty != true) {
      context.pop();
      return;
    }

    // ダイアログを表示して確認
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.confirmDiscardChangesTitle,
      message: l10n.confirmDiscardChangesMessage,
      okLabel: l10n.discard,
      cancelLabel: l10n.notDiscard,
    );

    // 破棄が選ばれたら画面を閉じる
    if (result == DialogResult.ok) {
      if (context.mounted) {
        context.pop();
      }
    }
  }
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
        if (isAdd) {
          await ref.read(itemUsecaseProvider).add(
                selectedImages: selectedImages,
                name: name!,
                wanterName: wanterName,
                wishRank: wishRank!,
                wishSeason: wishSeason,
                urls: urls,
                memo: memo,
              );
        } else {
          await ref.read(itemUsecaseProvider).update(
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

    // BUG(yakitama5): メッセージに商品名が入っていない
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
  const _ImageFields({
    required this.imageWidgetKeys,
    required this.onSelected,
    required this.onDeleted,
  });

  final void Function(int index) onSelected;
  final void Function(int index) onDeleted;

  final List<String> imageWidgetKeys;

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
                  key: ValueKey(imageWidgetKeys[i]),
                  formControlName: '$i',
                  inputBuilder: (onPressed) => InkWell(
                    borderRadius: radius,
                    onTap: onPressed,
                    child: EmptyItemImage(
                      iconData: MdiIcons.imagePlus,
                      radius: radius,
                    ),
                  ),
                  onSelected: () => onSelected(i),
                  onDeleted: () => onDeleted(i),
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
  const _UrlFields({required this.urlWidgetKeys});

  final List<String> urlWidgetKeys;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final formModel = ReactiveItemFormModelForm.of(context)!;

    return ReactiveItemFormModelFormArrayBuilder(
      formControl: formModel.urlsControl,
      itemBuilder: (context, i, item, formModel) =>
          ReactiveOutlinedTextField<String>(
        key: ValueKey(urlWidgetKeys[i]),
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
