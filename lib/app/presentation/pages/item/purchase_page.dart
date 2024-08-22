import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/config/purchase_config.dart';
import '../../../application/extension/number_extension.dart';
import '../../../application/extension/string_extension.dart';
import '../../../application/model/dialog_result.dart';
import '../../../application/model/purchase/purchase_form_model.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
import '../../../application/usecase/purchase/purchase_usecase.dart';
import '../../../application/usecase/purchase/state/buyer_name_suggestion.dart';
import '../../../domain/item/entity/item.dart';
import '../../../domain/purchase/entity/purchase.dart';
import '../../components/importer.dart';
import '../../hooks/src/use_l10n.dart';
import '../error/components/error_view.dart';
import '../presentation_mixin.dart';
import 'components/item_images.dart';

class PurchasePage extends HookConsumerWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(ItemDetailProviders.itemProvider);
    final purchase = ref.watch(ItemDetailProviders.purchaseProvider);

    return switch ((item, purchase)) {
      (
        AsyncData(value: final Item itemData),
        AsyncData(value: final Purchase? purchaseData)
      ) =>
        _PurchaseForm(
          item: itemData,
          purchase: purchaseData,
        ),

      // エラー表示
      (AsyncError(error: final error, stackTrace: final stackTrace), _) ||
      (_, AsyncError(error: final error, stackTrace: final stackTrace)) =>
        ErrorView(error, stackTrace),

      // 一瞬なのでローディング中は何も表示しない
      _ => const SizedBox.shrink(),
    };
  }
}

class _PurchaseForm extends HookConsumerWidget {
  const _PurchaseForm({
    required this.item,
    this.purchase,
  });

  final Item item;
  final Purchase? purchase;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();

    return PurchaseFormModelFormBuilder(
      model: _createModel(),
      builder: (context, formModel, child) => PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) =>
            _onWillPopScope(context, l10n, didPop),
        child: UnfocusOnTap(
          child: Scaffold(
            appBar: AppBar(
              title: Text(l10n.purchaseOrpurchasePlan),
              actions: [
                const _Submit(),
                const Gap(8),
                if (purchase != null) const _DeleteButton(),
              ],
            ),
            body: SingleChildScrollView(
              child: PagePadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemImages(imagesPath: item.imagesPath),
                    const Gap(16),
                    TextWithLabel(
                      item.name,
                      label: l10n.name,
                    ),
                    const Gap(16),
                    const _SurpriseField(),
                    const Gap(16),
                    const _PriceField(),
                    const Gap(16),
                    const _PurchaseDateField(),
                    const Gap(16),
                    const _SentAtField(),
                    const Gap(16),
                    const _BuyerNameField(),
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
  PurchaseFormModel _createModel() => PurchaseFormModel(
        price: purchase?.price?.formatComma(),
        buyerName: purchase?.buyerName,
        surprise: purchase?.surprise ?? true,
        planDate: purchase?.planDate,
        sentAt: purchase?.sentAt,
        memo: purchase?.memo,
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
    final dirty = ReactivePurchaseFormModelForm.of(context)?.form.dirty;
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
    // 入力チェック判定
    final formModel = ReactivePurchaseFormModelForm.of(context)!;
    if (formModel.form.invalid) {
      formModel.form.markAllAsTouched();
      return;
    }

    // 入力内容の取得
    final surprise = formModel.surpriseControl.value!;
    final price = formModel.priceControl?.value;
    final planDate = formModel.planDateControl?.value;
    final sentAt = formModel.sentAtControl?.value;
    final memo = formModel.memoControl?.value;
    final buyerName = formModel.buyerNameControl?.value;

    // 登録 or 更新
    final itemId = ref.read(ItemDetailProviders.itemIdProvider);
    final isAdd = await ref.read(
      ItemDetailProviders.purchaseProvider.selectAsync((data) => data == null),
    );
    final usecase = ref.read(purchaseUsecaseProvider);
    if (isAdd) {
      await usecase.add(
        itemId: itemId!,
        price: price?.parseCurrency().toInt(),
        buyerName: buyerName,
        planDate: planDate,
        surprise: surprise,
        sentAt: sentAt,
        memo: memo,
      );
    } else {
      await usecase.update(
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
  Widget build(BuildContext context, WidgetRef ref) => DeleteButton(
        onPressed: () => onDelete(context, ref),
      );

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
    final l10n = useL10n();
    final textTheme = Theme.of(context).textTheme;
    final formModel = ReactivePurchaseFormModelForm.of(context)!;

    return ReactiveSwitchListTile.adaptative(
      formControl: formModel.surpriseControl,
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
    final l10n = useL10n();

    return ReactiveOutlinedTextField<String>(
      formControlName: PurchaseFormModelForm.priceControlName,
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
    final l10n = useL10n();

    return ReactiveDateTimePicker(
      formControlName: PurchaseFormModelForm.planDateControlName,
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
    final l10n = useL10n();

    return ReactiveDateTimePicker(
      formControlName: PurchaseFormModelForm.sentAtControlName,
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
    final l10n = useL10n();

    final names = ref.watch(buyerNameSuggestionProvider).value;
    final userNames = names
        ?.whereNotNull()
        // 重複の削除
        .toSet()
        .toList();

    return ReactiveOutlinedRawAutocomplete(
      formControlName: PurchaseFormModelForm.buyerNameControlName,
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
    final l10n = useL10n();

    return ReactiveOutlinedTextField<String>(
      formControlName: PurchaseFormModelForm.memoControlName,
      labelText: l10n.memo,
      maxLines: 5,
      maxLength: purchaseConfig.maxMemoLength,
    );
  }
}
