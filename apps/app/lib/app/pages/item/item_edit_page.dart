import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_image_carousel_slider.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/app/pages/item/components/rating_icon.dart';
import 'package:flutter_app/app/pages/item/controllers/item_edit_form_controller.dart';
import 'package:flutter_app/app/pages/item/services/url_thumbnail_fetcher.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'components/item_edit_image_section.dart';
part 'components/item_edit_url_date_section.dart';

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
    final draft = useMemoized(
      () => ItemEditFormDraft.fromItem(item),
      [item?.id],
    );
    final urlThumbnails = useState<Map<String, String?>>(
      draft.urlThumbnails,
    );
    final wishDateControl = useMemoized(
      () => FormControl<DateTime>(value: draft.wishDate),
      [item?.id],
    );
    useStream(wishDateControl.valueChanges);
    useEffect(() => wishDateControl.dispose, [wishDateControl]);

    return ItemFormModelFormBuilder(
      model: draft.model,
      builder: (context, formModel, child) => Nested(
        children: [
          PopScopeDirtyConfirm(
            dirty:
                (ReactiveItemFormModelForm.of(context)?.form.dirty ?? false) ||
                wishDateControl.dirty,
          ),
          const UnfocusOnTap(),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(titleData ?? ''),
            actions: [
              _Submit(
                urlThumbnails: urlThumbnails,
                wishDateControl: wishDateControl,
              ),
              const Gap(8),
              if (item != null) const _DeleteButton(),
            ],
          ),
          body: SingleChildScrollView(
            child: PagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ImageFields(urlThumbnails: urlThumbnails),
                  const Gap(16),
                  const _NameField(),
                  const Gap(16),
                  const _WanterNameField(),
                  const _WishRankField(),
                  const Gap(64),
                  const _WishSeasonField(),
                  const Gap(16),
                  _WishDateField(control: wishDateControl),
                  const Gap(16),
                  _UrlFields(urlThumbnails: urlThumbnails),
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
}

/// 保存ボタン
class _Submit extends HookConsumerWidget with PresentationMixin {
  const _Submit({
    required this.urlThumbnails,
    required this.wishDateControl,
  });

  final ValueNotifier<Map<String, String?>> urlThumbnails;
  final FormControl<DateTime> wishDateControl;

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      SaveButton(onPressed: () => onSave(context, ref));

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

        final submission = ItemEditSubmission.fromForm(
          form: formModel,
          wishDate: wishDateControl.value,
          urlThumbnails: urlThumbnails.value,
        );

        // 登録 or 更新
        final itemId = ref.read(ItemDetailProviders.itemIdProvider);
        final usecase = ref.read(itemUsecaseProvider);
        final controller = ItemEditFormController(
          add: (value) => usecase.add(
            selectedImages: value.selectedImages,
            name: value.name,
            wanterName: value.wanterName,
            wishRank: value.wishRank,
            wishSeason: value.wishSeason,
            wishDate: value.wishDate,
            urls: value.urls,
            urlThumbnails: value.urlThumbnails,
            memo: value.memo,
            generateItemDetailRoute: (id) => ItemRouteData(id.value).location,
          ),
          update: (id, value) => usecase.update(
            itemId: id,
            selectedImages: value.selectedImages,
            name: value.name,
            wanterName: value.wanterName,
            wishRank: value.wishRank,
            wishSeason: value.wishSeason,
            wishDate: value.wishDate,
            urls: value.urls,
            urlThumbnails: value.urlThumbnails,
            memo: value.memo,
          ),
        );
        await controller.save(
          itemId: itemId,
          submission: submission,
        );

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
