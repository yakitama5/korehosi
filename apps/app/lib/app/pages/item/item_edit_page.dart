import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_image_carousel_slider.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/app/pages/item/components/rating_icon.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ItemEditPage extends HookConsumerWidget with RouteAware {
  const ItemEditPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = i18n.item.itemEditPage;

    final itemId = ref.watch(ItemDetailProviders.itemIdProvider);
    final item = ref.watch(ItemDetailProviders.itemProvider);

    return item.when(
      data: (itemData) => _ItemForm(
        item: itemData,
        titleData: itemId == null ? messages.createTitle : messages.editTitle,
      ),
      error: ErrorView.new,
      // すぐ表示されるはずなので、何も表示しない
      loading: () => const SizedBox.shrink(),
    );
  }
}

/// 入力フォーム
class _ItemForm extends HookConsumerWidget {
  const _ItemForm({this.titleData, this.item});

  final String? titleData;
  final Item? item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ItemFormModelFormBuilder(
      model: _createModel(),
      builder: (context, formModel, child) => Nested(
        children: [
          PopScopeDirtyConfirm(
            dirty: ReactiveItemFormModelForm.of(context)?.form.dirty,
          ),
          const UnfocusOnTap(),
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
  ItemFormModel _createModel() {
    return ItemFormModel(
      name: item?.name,
      // HACK(yakitama5): 初期値設定をモデル定義側に統一したい
      wishRank: item?.wishRank ?? 0.0,
      wanterName: item?.wanterName,
      wishSeason: item?.wishSeason,
      memo: item?.memo,
      // 最低1つの要素を表示
      urls: (item?.urls?.isEmpty ?? true) ? [''] : item?.urls,
      images: [
        // 新規アップロード用に項目を+1定義
        ...item?.images
                // 画像はアップロード済のものと分けて管理するためモデルに変換
                ?.map((image) => SelectedImageModel(savedImage: image))
                .toList() ??
            [],
        null,
      ],
    );
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
      action: () async {
        // 入力チェック判定
        final formModel = ReactiveItemFormModelForm.of(context)!;
        if (formModel.form.invalid) {
          formModel.form.markAllAsTouched();
          return;
        }

        final navigator = Navigator.of(context);

        // 入力値を取得
        final name = formModel.nameControl.value;
        final wanterName = formModel.wanterNameControl.value;
        final wishRank = formModel.wishRankControl.value;
        final wishSeason = formModel.wishSeasonControl.value;
        final urls = formModel.urlsControl.controls
            .map((e) => e.value)
            .nonNulls
            .toList();
        final memo = formModel.memoControl.value;
        final selectedImages = formModel.imagesControl.controls
            .map((e) => e.value)
            .nonNulls
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
            generateItemDetailRoute: (itemId) =>
                ItemRouteData(itemId.value).location,
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
        navigator.pop();
      },
    );
  }
}

/// 削除ボタン
class _DeleteButton extends HookConsumerWidget with PresentationMixin {
  const _DeleteButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      DeleteButton(onPressed: () => onDelete(context, ref));

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    // 削除確認

    final item = await ref.read(ItemDetailProviders.itemProvider.future);
    if (!context.mounted) {
      return;
    }

    final messages = commonI18n.common.deleteConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(name: item?.name ?? ''),
    );
    if (result != OkCancelResult.ok) {
      return;
    }

    // 削除処理
    if (!context.mounted) {
      return;
    }
    await execute(
      action: () async {
        final itemId = ref.read(ItemDetailProviders.itemIdProvider);
        await ref.read(itemUsecaseProvider).delete(itemId: itemId!);

        // 一覧画面に戻る
        if (context.mounted) {
          const ItemsRouteData().go(context);
        }
      },
      successMessage: commonI18n.common.deletionComplete,
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
                (i, key) => ClipRRect(
                  borderRadius: radius,
                  child: ReactiveImagePicker(
                    key: ObjectKey(formArray.control('$i')),
                    formControlName: '$i',
                    inputBuilder: (onPressed) => InkWell(
                      borderRadius: radius,
                      onTap: onPressed,
                      child: const ItemsEmptyImage(
                        width: double.infinity,
                        height: double.infinity,
                        showAddIcon: true,
                      ),
                    ),
                    onSelected: () => formModel.addImagesItem(null),
                    onDeleted: () => formModel.imagesControl.removeAt(i),
                    selectedBuilder: (onPressed, selectedFile) {
                      final uploaded = selectedFile.savedImage != null;
                      return InkWell(
                        borderRadius: radius,
                        onTap: onPressed,
                        // ファイル種別に応じてWidgetを切り替える
                        child: uploaded
                            ? NetworkImageWithPlaceholder(
                                imageUrl: selectedFile.savedImage!.url,
                              )
                            : XFileImage(xFile: selectedFile.uploadFile!),
                      );
                    },
                  ),
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
    return ReactiveOutlinedTextField<String>(
      formControlName: ItemFormModelForm.nameControlName,
      labelText: i18n.item.common.itemName,
      maxLength: itemConfig.maxNameLength,
      isRequired: true,
    );
  }
}

class _WanterNameField extends HookConsumerWidget {
  const _WanterNameField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // グループ内のユーザーを候補に上げる
    final userNames = ref
        .watch(wanterNameSuggestionProvider)
        .value
        ?.nonNulls
        // 重複の削除
        .toSet()
        .toList();

    return ReactiveOutlinedRawAutocomplete(
      formControlName: ItemFormModelForm.wanterNameControlName,
      labelText: i18n.item.common.wanterName,
      maxLength: itemConfig.maxWanterNameLength,
      options: userNames ?? [],
    );
  }
}

class _WishRankField extends HookConsumerWidget {
  const _WishRankField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveRatingBarBuilder<double>(
      formControlName: ItemFormModelForm.wishRankControlName,
      decoration: InputDecoration(
        label: Text(i18n.item.common.wishRank),
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
    return ReactiveOutlinedTextField<String>(
      formControlName: ItemFormModelForm.wishSeasonControlName,
      labelText: i18n.item.common.wishSeason,
      hintText: i18n.item.itemEditPage.wishSeason.hint,
      maxLength: itemConfig.maxWishSeasonLength,
    );
  }
}

class _UrlFields extends HookConsumerWidget {
  const _UrlFields();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formModel = ReactiveItemFormModelForm.of(context)!;

    return ReactiveItemFormModelFormArrayBuilder(
      formControl: formModel.urlsControl,
      itemBuilder: (_, i, _, _, formModel) => ReactiveOutlinedTextField<String>(
        key: ObjectKey(formModel.urlsControl.control('$i')),
        formControlName: '$i',
        labelText: i18n.item.common.url,
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
    return TextButton.icon(
      onPressed: onAdd,
      icon: const Icon(Icons.add),
      label: Text(i18n.item.itemEditPage.addUrl),
    );
  }
}

class _MemoField extends HookConsumerWidget {
  const _MemoField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveOutlinedTextField<String>(
      formControlName: ItemFormModelForm.memoControlName,
      labelText: i18n.item.common.memo,
      maxLines: 5,
      maxLength: itemConfig.maxMemoLength,
    );
  }
}
