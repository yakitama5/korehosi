import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/config/item_config.dart';
import '../../../application/model/dialog_result.dart';
import '../../../application/model/item/selected_image_model.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/item_usecase.dart';
import '../../../application/usecase/item/state/item_page_providers.dart';
import '../../../application/usecase/item/state/wanter_name_suggestion.dart';
import '../../components/importer.dart';
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
    final l10n = ref.watch(l10nProvider);
    final isCreate = ref.watch(
      ItemPageProviders.itemIdProvider.select((value) => value == null),
    );
    final asyncForm = ref.watch(ItemPageProviders.itemFormProvider);

    return asyncForm.when(
      skipLoadingOnReload: true,
      data: (form) {
        return ReactiveForm(
          formGroup: form,
          onWillPop: () async {
            // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら変更する
            // NavigationBarを検知出来ないのは一旦保留
            if (!form.dirty) {
              // 内容が変更されていなければ閉じる
              return true;
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
              return true;
            }
            return false;
          },
          child: _Form(
            titleData: isCreate
                ? l10n.createPageTitle(l10n.wishList)
                : l10n.editPageTitle(l10n.wishList),
          ),
        );
      },
      error: ErrorView.new,
      // すぐ表示されるはずなので、何も表示しない
      loading: () => const SizedBox.shrink(),
    );
  }
}

/// 入力フォーム
class _Form extends HookConsumerWidget {
  const _Form({this.titleData});

  final String? titleData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UnfocusOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(titleData ?? ''),
          actions: const [
            _SaveButton(),
            Gap(8),
            _DeleteButton(),
          ],
        ),
        body: const SingleChildScrollView(
          child: PagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ImageFields(),
                Gap(16),
                _NameField(),
                Gap(16),
                _WanterNameField(),
                _WishRankField(),
                Gap(64),
                _WishSeasonField(),
                Gap(16),
                _UrlFields(),
                _UrlAddButton(),
                Gap(16),
                _MemoField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 保存ボタン
class _SaveButton extends HookConsumerWidget with PresentationMixin {
  const _SaveButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      SaveButton(onPressesd: () => onSave(context, ref));

  Future<void> onSave(BuildContext context, WidgetRef ref) async {
    await execute(
      context,
      action: () async {
        // 入力チェック判定
        final form = ReactiveForm.of(context)! as FormGroup;
        if (form.invalid) {
          form.markAllAsTouched();
          return;
        }

        // 入力値を取得
        final name = form.control(itemConfig.nameKey).value as String?;
        final wanterName =
            form.control(itemConfig.wanterNameKey).value as String?;
        final wishRank = form.control(itemConfig.wishRankKey).value as double;
        final wishSeason =
            form.control(itemConfig.wishSeasonKey).value as String?;
        final urls = (form.control(itemConfig.urlsKey) as FormArray)
            .controls
            .map((e) => e.value as String?)
            .whereNotNull()
            .toList();
        final memo = form.control(itemConfig.memoKey).value as String?;
        final imagesCtl = form.control(itemConfig.imagesKey) as FormArray;
        final selectedImages = imagesCtl.controls
            .map((e) => e.value as SelectedImageModel?)
            .whereNotNull()
            .toList();

        // 保存
        final itemId = ref.read(ItemPageProviders.itemIdProvider);

        // 登録 or 更新
        final isAdd = itemId == null;
        if (isAdd) {
          await ref.read(itemUsecaseProvider).add(
                selectedImages: selectedImages,
                name: name!,
                wanterName: wanterName,
                wishRank: wishRank,
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
                wishRank: wishRank,
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
  Widget build(BuildContext context, WidgetRef ref) {
    // 更新時のみ表示
    final show = ref.watch(
      ItemPageProviders.itemIdProvider.select((itemId) => itemId != null),
    );
    if (!show) {
      return const SizedBox.shrink();
    }

    return DeleteButton(
      onPressed: () => onDelete(context, ref),
    );
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final l10n = ref.read(l10nProvider);
    final item = ref.read(ItemPageProviders.itemProvider).value;
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
        final itemId = ref.read(ItemPageProviders.itemIdProvider);
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
    // 画像一覧のキー一覧を取得
    final controlKeys = ref.watch(ItemPageProviders.imageKeysProvider);

    return ReactiveFormArray<SelectedImageModel>(
      formArrayName: itemConfig.imagesKey,
      builder: (context, formArray, child) => ItemImageCarouselSlider(
        items: controlKeys
            .mapIndexed((index, key) => _ImageField(index: index, formKey: key))
            .toList(),
      ),
    );
  }
}

/// 欲しい物の画像
class _ImageField extends HookConsumerWidget {
  const _ImageField({required this.index, required this.formKey});

  final int index;
  final String formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radius = BorderRadius.circular(16);

    return ReactiveImagePicker(
      key: ValueKey(key),
      formControlName: '$index',
      inputBuilder: (onPressed) => InkWell(
        borderRadius: radius,
        onTap: onPressed,
        child: EmptyItemImage(iconData: MdiIcons.imagePlus, radius: radius),
      ),
      onSelected: ref.read(ItemPageProviders.imageKeysProvider.notifier).add,
      onDeleted: () =>
          ref.read(ItemPageProviders.imageKeysProvider.notifier).remove(index),
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
    );
  }
}

/// 欲しい物の名称
class _NameField extends HookConsumerWidget {
  const _NameField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveOutlinedTextField<String>(
      formControlName: itemConfig.nameKey,
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
    final l10n = ref.watch(l10nProvider);

    // グループ内のユーザーを候補に上げる
    final userNames = ref
        .watch(wanterNameSuggestionProvider)
        .value
        ?.whereNotNull()
        // 重複の削除
        .toSet()
        .toList();

    return ReactiveOutlinedRawAutocomplete(
      formControlName: itemConfig.wanterNameKey,
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
    final l10n = ref.watch(l10nProvider);

    return ReactiveRatingBarBuilder<double>(
      formControlName: itemConfig.wishRankKey,
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
    final l10n = ref.watch(l10nProvider);

    return ReactiveOutlinedTextField<String>(
      formControlName: itemConfig.wishSeasonKey,
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
    final l10n = ref.watch(l10nProvider);
    final controlKeys = ref.watch(ItemPageProviders.urlKeysProvider);

    return ReactiveFormArray<String>(
      formArrayName: itemConfig.urlsKey,
      builder: (context, formArray, child) => Column(
        children: controlKeys
            .mapIndexed(
              (index, key) => ReactiveOutlinedTextField<String>(
                key: ValueKey(key),
                formControlName: '$index',
                labelText: l10n.url,
                maxLength: itemConfig.maxUrlLength,
                textInputType: TextInputType.url,
                counterText: '',
              ),
            )
            .toList(),
      ),
    );
  }
}

class _UrlAddButton extends HookConsumerWidget {
  const _UrlAddButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return TextButton.icon(
      onPressed: ref.read(ItemPageProviders.urlKeysProvider.notifier).add,
      icon: const Icon(Icons.add),
      label: Text(l10n.addUrl),
    );
  }
}

class _MemoField extends HookConsumerWidget {
  const _MemoField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveOutlinedTextField<String>(
      formControlName: itemConfig.memoKey,
      labelText: l10n.memo,
      maxLines: 5,
      maxLength: itemConfig.maxMemoLength,
    );
  }
}
