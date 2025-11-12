import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_images.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PurchasePage extends HookConsumerWidget {
  const PurchasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncItem = ref.watch(ItemDetailProviders.itemProvider);

    return asyncItem.when(
      data: (item) => _PurchaseForm(item: item),
      error: ErrorView.new,
      // 一瞬なのでローディング中は何も表示しない
      loading: () => const SizedBox.shrink(),
    );
  }
}

class _PurchaseForm extends HookConsumerWidget {
  const _PurchaseForm({required this.item});

  final Item? item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DeletedSafetyBuilder<Item>(
      nullableValue: item,
      builder: (context, value) => PurchaseFormModelFormBuilder(
        model: _createModel(value.purchase),
        builder: (context, formModel, child) => PopScopeDirtyConfirm(
          dirty: ReactivePurchaseFormModelForm.of(context)?.form.dirty,
          child: UnfocusOnTap(
            child: Scaffold(
              appBar: AppBar(
                title: Text(i18n.item.purchasePage.purchase),
                actions: const [_Submit(), Gap(8), _DeleteButton()],
              ),
              body: SingleChildScrollView(
                child: PagePadding(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemImages(images: value.images),
                      const Gap(16),
                      TextWithLabel(
                        value.name,
                        label: i18n.item.common.itemName,
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
      ),
    );
  }

  /// FormGroupを生成する
  PurchaseFormModel _createModel(Purchase? purchase) => PurchaseFormModel(
    price: purchase?.price?.formatComma(),
    buyerName: purchase?.buyerName,
    surprise: purchase?.surprise ?? true,
    planDate: purchase?.planDate,
    sentAt: purchase?.sentAt,
    memo: purchase?.memo,
  );
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
      ItemDetailProviders.itemProvider.selectAsync(
        (data) => data?.purchase == null,
      ),
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
    final messages = commonI18n.common.deleteConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(name: i18n.item.purchasePage.purchase),
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
    final messages = i18n.item.purchasePage.surprise;

    return ReactiveSwitchListTile.adaptive(
      formControl: formModel.surpriseControl,
      contentPadding: EdgeInsets.zero,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(messages.label),
          Text(messages.caption, style: textTheme.labelMedium),
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
      labelText: i18n.item.common.price,
      maxLength: purchaseConfig.maxPriceLength,
      textInputType: TextInputType.number,
      prefixText: i18n.item.common.currencySymbol,
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
      fieldLabelText: i18n.item.common.purchasePlanDate,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: i18n.item.common.purchasePlanDate,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
        helperText: i18n.item.purchasePage.purchasePlanDate.hint,
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
      fieldLabelText: i18n.item.common.sentDate,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        labelText: i18n.item.common.sentDate,
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_today),
        helperText: i18n.item.purchasePage.sentDate.hint,
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
      labelText: i18n.item.common.buyerName,
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
      labelText: i18n.item.common.memo,
      maxLines: 5,
      maxLength: purchaseConfig.maxMemoLength,
    );
  }
}
