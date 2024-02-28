import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/config/purchase_config.dart';
import '../../../application/extension/string_extension.dart';
import '../../../application/model/dialog_result.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
import '../../../application/usecase/purchase/purchase_usecase.dart';
import '../../../application/usecase/purchase/state/buyer_name_suggestion.dart';
import '../../components/importer.dart';
import '../error/components/error_view.dart';
import '../presentation_mixin.dart';

class PurchasePage extends HookConsumerWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 画面で利用するProviderは破棄したくないので、画面先頭で監視
    _listenPageProvider(ref);

    final l10n = ref.watch(l10nProvider);
    final asyncForm = ref.watch(ItemDetailProviders.purchaseFormProvider);

    return asyncForm.when(
      data: (form) {
        return ReactiveForm(
          formGroup: form,
          onWillPop: () async {
            // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら変更する
            /// NavigationBarを検知出来ないのは一旦保留

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
          child: const _Form(),
        );
      },
      error: ErrorView.new,
      // すぐ表示されるはずなので、何も表示しない
      loading: () => const SizedBox.shrink(),
    );
  }

  /// 画面で利用するProviderを監視しておく
  void _listenPageProvider(WidgetRef ref) {
    ref
      ..watch(
        ItemDetailProviders.itemProvider.select((value) => value.value == null),
      )
      ..watch(
        ItemDetailProviders.purchaseProvider
            .select((value) => value.value == null),
      );
  }
}

class _Form extends HookConsumerWidget {
  const _Form();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return UnfocusOnTap(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.purchaseOrpurchasePlan),
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
                DetailItemImages(),
                Gap(16),
                DetailItemName(),
                Gap(16),
                _SurpriseField(),
                Gap(16),
                _PriceField(),
                Gap(16),
                _PurchaseDateField(),
                Gap(16),
                _SentAtField(),
                Gap(16),
                _BuyerNameField(),
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
    // 入力チェック判定
    final form = ReactiveForm.of(context)! as FormGroup;
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    // 入力内容の取得
    final surprise = form.control(purchaseConfig.surpriseKey).value as bool;
    final price = form.control(purchaseConfig.priceKey).value as String?;
    final planDate =
        form.control(purchaseConfig.planDataKey).value as DateTime?;
    final sentAt = form.control(purchaseConfig.sentAtKey).value as DateTime?;
    final memo = form.control(purchaseConfig.memoKey).value as String?;
    final buyerName =
        form.control(purchaseConfig.buyerNameKey).value as String?;

    // 登録 or 更新
    final itemId = ref.read(ItemDetailProviders.itemIdProvider);
    final isAdd = await ref.read(
      ItemDetailProviders.purchaseProvider.selectAsync((data) => data == null),
    );
    if (isAdd) {
      await ref.read(purchaseUsecaseProvider).add(
            itemId: itemId!,
            price: price?.parseCurrency().toInt(),
            buyerName: buyerName,
            planDate: planDate,
            surprise: surprise,
            sentAt: sentAt,
            memo: memo,
          );
    } else {
      await ref.read(purchaseUsecaseProvider).update(
            itemId: itemId!,
            price: price?.parseCurrency().toInt(),
            buyerName: buyerName,
            planDate: planDate,
            surprise: surprise,
            sentAt: sentAt,
            memo: memo,
          );
    }

    // 遷移元にポップ
    if (context.mounted) {
      context.pop();
    }
  }
}

/// 削除ボタン
class _DeleteButton extends HookConsumerWidget with PresentationMixin {
  const _DeleteButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 更新時のみ表示
    final show = ref.watch(
      ItemDetailProviders.purchaseProvider
          .select((value) => value.value != null),
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
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.deleteConfirmTitle,
      message: l10n.deleteCofirmMessage(l10n.purchaseInfoTitle),
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
        // 削除
        final itemId = ref.read(ItemDetailProviders.itemIdProvider);
        await ref.read(purchaseUsecaseProvider).delete(itemId: itemId!);

        // 遷移元にポップ
        if (context.mounted) {
          context.pop();
        }
      },
    );
  }
}

/// サプライズスイッチ
class _SurpriseField extends HookConsumerWidget {
  const _SurpriseField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;

    return ReactiveSwitchListTile.adaptative(
      formControlName: purchaseConfig.surpriseKey,
      contentPadding: EdgeInsets.zero,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.surprise),
          Text(
            l10n.surpriseCaption,
            style: textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}

/// 金額テキスト
class _PriceField extends HookConsumerWidget {
  const _PriceField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveOutlinedTextField<String>(
      formControlName: purchaseConfig.priceKey,
      labelText: l10n.price,
      maxLength: purchaseConfig.maxPriceLength,
      textInputType: TextInputType.number,
      prefixText: l10n.yenMark,
      // 金額はカンマ区切りで整形する
      inputFormatters: [
        ThousandsFormatter(),
      ],
    );
  }
}

/// 購入予定日
class _PurchaseDateField extends HookConsumerWidget {
  const _PurchaseDateField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveDateTimePicker(
      formControlName: purchaseConfig.planDataKey,
      fieldLabelText: l10n.purchasePlanDateTime,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: l10n.purchasePlanDateTime,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
        helperText: l10n.purchasePlanDateTimeCaption,
      ),
    );
  }
}

/// 渡した日
class _SentAtField extends HookConsumerWidget {
  const _SentAtField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveDateTimePicker(
      formControlName: purchaseConfig.sentAtKey,
      fieldLabelText: l10n.sentAt,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: l10n.sentAt,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
        helperText: l10n.sentAtCaption,
      ),
    );
  }
}

/// 購入者
class _BuyerNameField extends HookConsumerWidget {
  const _BuyerNameField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final names = ref.watch(buyerNameSuggestionProvider).value;
    final userNames = names
        ?.whereNotNull()
        // 重複の削除
        .toSet()
        .toList();

    return ReactiveOutlinedRawAutocomplete(
      formControlName: purchaseConfig.buyerNameKey,
      labelText: l10n.buyerName,
      maxLength: purchaseConfig.maxBuyerNameLength,
      options: userNames ?? [],
    );
  }
}

class _MemoField extends HookConsumerWidget {
  const _MemoField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveOutlinedTextField<String>(
      formControlName: purchaseConfig.memoKey,
      labelText: l10n.memo,
      maxLines: 5,
      maxLength: purchaseConfig.maxMemoLength,
    );
  }
}
