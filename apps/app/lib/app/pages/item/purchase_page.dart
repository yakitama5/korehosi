import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/importer.dart';
import 'package:flutter_app/app/pages/error/components/error_view.dart';
import 'package:flutter_app/app/pages/item/components/item_images.dart';
import 'package:flutter_app/app/pages/presentation_mixin.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';
import 'package:packages_application/item.dart';
import 'package:packages_domain/item.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PurchasePage extends HookConsumerWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(ItemDetailProviders.itemProvider);
    final purchase = ref.watch(ItemDetailProviders.purchaseProvider);

    return switch ((item, purchase)) {
      (
        AsyncData(value: final Item itemData),
        AsyncData(value: final Purchase? purchaseData),
      ) =>
        _PurchaseForm(item: itemData, purchase: purchaseData),

      // エラー表示
      (AsyncError(error: final error, stackTrace: final stackTrace), _) ||
      (
        _,
        AsyncError(error: final error, stackTrace: final stackTrace),
      ) => ErrorView(error, stackTrace),

      // 一瞬なのでローディング中は何も表示しない
      _ => const SizedBox.shrink(),
    };
  }
}

class _PurchaseForm extends HookConsumerWidget {
  const _PurchaseForm({required this.item, this.purchase});

  final Item item;
  final Purchase? purchase;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PurchaseFormModelFormBuilder(
      model: _createModel(),
      builder: (context, formModel, child) => PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) =>
            _onWillPopScope(context, didPop),
        child: UnfocusOnTap(
          child: Scaffold(
            appBar: AppBar(
              title: Text(i18n.app.purchaseOrpurchasePlan),
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
                    TextWithLabel(item.name, label: i18n.app.name),
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

  Future<void> _onWillPopScope(BuildContext context, bool didPop) async {
    // Notes: 移行ガイドに沿って変更
    // https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
    if (didPop) {
      return;
    }

    final navigator = Navigator.of(context);

    // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら変更する
    // NavigationBarを検知出来ないのは一旦保留
    // 内容が変更されていなければ閉じる
    final dirty = ReactivePurchaseFormModelForm.of(context)?.form.dirty;
    if (dirty != true) {
      navigator.pop();
      return;
    }

    // ダイアログを表示して確認
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: i18n.app.confirmDiscardChangesTitle,
      message: i18n.app.confirmDiscardChangesMessage,
      okLabel: i18n.app.discard,
      cancelLabel: i18n.app.notDiscard,
    );

    // 破棄が選ばれたら画面を閉じる
    if (result == DialogResult.ok) {
      navigator.pop();
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

    final navigator = Navigator.of(context);

    // 入力内容の取得
    final surprise = formModel.surpriseControl.value!;
    final price = formModel.priceControl.value;
    final planDate = formModel.planDateControl.value;
    final sentAt = formModel.sentAtControl.value;
    final memo = formModel.memoControl.value;
    final buyerName = formModel.buyerNameControl.value;

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
    navigator.pop();
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
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: i18n.app.deleteConfirmTitle,
      message: i18n.app.deleteCofirmMessage(item: i18n.app.purchaseInfoTitle),
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
        final navigator = Navigator.of(context);

        // 削除
        final itemId = ref.read(ItemDetailProviders.itemIdProvider);
        await ref.read(purchaseUsecaseProvider).delete(itemId: itemId!);

        // 遷移元にポップ
        navigator.pop();
      },
    );
  }
}

/// サプライズスイッチ
class _SurpriseField extends HookConsumerWidget {
  const _SurpriseField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final formModel = ReactivePurchaseFormModelForm.of(context)!;

    return ReactiveSwitchListTile.adaptive(
      formControl: formModel.surpriseControl,
      contentPadding: EdgeInsets.zero,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(i18n.app.surprise),
          Text(i18n.app.surpriseCaption, style: textTheme.labelMedium),
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
    return ReactiveOutlinedTextField<String>(
      formControlName: PurchaseFormModelForm.priceControlName,
      labelText: i18n.app.price,
      maxLength: purchaseConfig.maxPriceLength,
      textInputType: TextInputType.number,
      prefixText: i18n.app.yenMark,
      // 金額はカンマ区切りで整形する
      inputFormatters: [ThousandsFormatter()],
    );
  }
}

/// 購入予定日
class _PurchaseDateField extends HookConsumerWidget {
  const _PurchaseDateField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveDateTimePicker(
      formControlName: PurchaseFormModelForm.planDateControlName,
      fieldLabelText: i18n.app.purchasePlanDateTime,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: i18n.app.purchasePlanDateTime,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
        helperText: i18n.app.purchasePlanDateTimeCaption,
      ),
    );
  }
}

/// 渡した日
class _SentAtField extends HookConsumerWidget {
  const _SentAtField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveDateTimePicker(
      formControlName: PurchaseFormModelForm.sentAtControlName,
      fieldLabelText: i18n.app.sentAt,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: i18n.app.sentAt,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
        helperText: i18n.app.sentAtCaption,
      ),
    );
  }
}

/// 購入者
class _BuyerNameField extends HookConsumerWidget {
  const _BuyerNameField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final names = ref.watch(buyerNameSuggestionProvider).value;
    final userNames = names?.nonNulls
        // 重複の削除
        .toSet()
        .toList();

    return ReactiveOutlinedRawAutocomplete(
      formControlName: PurchaseFormModelForm.buyerNameControlName,
      labelText: i18n.app.buyerName,
      maxLength: purchaseConfig.maxBuyerNameLength,
      options: userNames ?? [],
    );
  }
}

class _MemoField extends HookConsumerWidget {
  const _MemoField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveOutlinedTextField<String>(
      formControlName: PurchaseFormModelForm.memoControlName,
      labelText: i18n.app.memo,
      maxLines: 5,
      maxLength: purchaseConfig.maxMemoLength,
    );
  }
}
