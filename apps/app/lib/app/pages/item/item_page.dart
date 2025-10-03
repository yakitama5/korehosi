import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/importer.dart';
import 'package:flutter_app/app/components/src/date_text_with_label.dart';
import 'package:flutter_app/app/pages/error/components/error_view.dart';
import 'package:flutter_app/app/pages/item/components/item_images.dart';
import 'package:flutter_app/app/pages/item/components/rating_icon.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';
import 'package:packages_application/item.dart';
import 'package:packages_application/user.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';

class ItemPage extends HookConsumerWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authUserProvider);
    final item = ref.watch(ItemDetailProviders.itemProvider);
    final purchase = ref.watch(ItemDetailProviders.purchaseProvider);

    // 欲しい物と購入情報に応じて判定を行う
    return switch ((item, purchase, user)) {
      // 欲しい物が見つからない場合は削除された扱い
      (
        AsyncData(value: null),
        AsyncData(value: final _),
        AsyncData(value: final _),
      ) =>
        ErrorView(i18n.app.deletedMessage, null),

      // 欲しい物が存在する場合は明細を表示
      (
        AsyncData(value: final Item itemData),
        AsyncData(value: final Purchase? purchaseData),
        AsyncData(value: final User userData),
      ) =>
        _ItemDetailView(item: itemData, purchase: purchaseData, user: userData),

      // いずれかがエラーの場合はエラー
      (AsyncError(error: final error, stackTrace: final stackTrace), _, _) ||
      (_, AsyncError(error: final error, stackTrace: final stackTrace), _) ||
      (
        _,
        _,
        AsyncError(error: final error, stackTrace: final stackTrace),
      ) => ErrorView(error, stackTrace),

      // 一瞬なのでローディング中は何も表示しない
      _ => const SizedBox.shrink(),
    };
  }
}

class _ItemDetailView extends HookWidget {
  const _ItemDetailView({
    required this.item,
    this.purchase,
    required this.user,
  });

  final Item item;
  final Purchase? purchase;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        actions: [EditIconButton(onPressed: () => _onEdit(context))],
      ),
      body: SingleChildScrollView(
        child: PagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemImages(imagesPath: item.imagesPath),
              const Gap(8),
              _PurchaseStatus(purchaseStatus: purchase.status),
              const Gap(32),
              TextWithLabel(item.name, label: i18n.app.name),
              const Gap(16),
              TextWithLabel(item.wanterName, label: i18n.app.wanterName),
              const Gap(16),
              _WishRank(wishRank: item.wishRank),
              const Gap(16),
              TextWithLabel(item.wishSeason, label: i18n.app.wishSeasonLabel),
              const Gap(16),
              _Urls(urls: item.urls),
              const Gap(16),
              TextWithLabel(item.memo, label: i18n.app.memo),
              const Gap(40),
              _PurchaseInfo(purchase: purchase, user: user),
              const Gap(160),
            ],
          ),
        ),
      ),
      floatingActionButton: _PurchaseFab(item: item, user: user),
    );
  }

  /// 編集押下
  ///
  /// 編集画面に遷移する
  void _onEdit(BuildContext context) => ItemEditRouteData(item.id).go(context);
}

/// 購入状況
class _PurchaseStatus extends HookWidget {
  const _PurchaseStatus({required this.purchaseStatus});

  final PurchaseStatus purchaseStatus;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(purchaseStatus.iconData, color: colorScheme.primary),
        const Gap(8),
        Text(
          i18n.kEnum.purchaseStatus(context: purchaseStatus),
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}

/// 欲しい度
class _WishRank extends HookWidget {
  const _WishRank({this.wishRank});

  final double? wishRank;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(i18n.app.wishRank, style: textTheme.labelMedium),
        RatingBar.builder(
          itemBuilder: (context, index) => const RatingIcon(),
          initialRating: wishRank ?? 0,
          // 編集不可
          ignoreGestures: true,
          onRatingUpdate: (value) {},
        ),
      ],
    );
  }
}

/// URL一覧
class _Urls extends HookWidget {
  const _Urls({this.urls});

  final List<String>? urls;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // 未設定の場合はダミー要素だけ表示
    if (urls == null || urls!.isEmpty) {
      return TextWithLabel(null, label: i18n.app.url);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(i18n.app.url, style: textTheme.labelMedium),
        ...urls!.map(
          (url) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: UrlLink(
              url: url,
              label: url,
              textStyle: const TextStyle(
                // URL表示は固定で青色
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// 購入情報
/// ログインユーザーが子供の場合は表示しない
class _PurchaseInfo extends HookWidget {
  const _PurchaseInfo({this.purchase, required this.user});

  final Purchase? purchase;
  final User user;

  @override
  Widget build(BuildContext context) {
    final isChild = user.ageGroup == AgeGroup.child;

    // 購入情報は子供には表示しない
    if (isChild) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _PurchaseInfoTitle(),
        const Gap(16),
        TextWithLabel(
          purchase?.price?.formatCurrency(
            locale: AppLocaleUtils.findDeviceLocale().languageCode,
          ),
          label: i18n.app.price,
        ),
        const Gap(16),
        DateTextWithLabel(
          dateTime: purchase?.planDate,
          label: i18n.app.purchasePlanDateTime,
        ),
        const Gap(16),
        DateTextWithLabel(dateTime: purchase?.sentAt, label: i18n.app.sentAt),
        const Gap(16),
        TextWithLabel(purchase?.buyerName, label: i18n.app.buyerName),
        const Gap(16),
        TextWithLabel(purchase?.memo, label: i18n.app.memo),
      ],
    );
  }
}

/// 購入情報のタイトル
class _PurchaseInfoTitle extends HookWidget {
  const _PurchaseInfoTitle();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(i18n.app.purchaseInfoTitle, style: textTheme.titleMedium),
        Text(
          i18n.app.purchaseInfoCaption,
          style: textTheme.labelMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

/// 購入/購入予定ボタン
///
/// ログインユーザーが子供の場合は表示しない
class _PurchaseFab extends HookConsumerWidget {
  const _PurchaseFab({required this.item, required this.user});

  final Item item;
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChild = user.ageGroup == AgeGroup.child;

    // 子供の場合はボタンを非表示
    if (isChild) {
      return const SizedBox.shrink();
    }

    return FloatingActionButton.extended(
      onPressed: () => _onPurchase(context),
      icon: const Icon(Icons.shopping_bag),
      label: Text(i18n.app.purchaseOrpurchasePlan),
    );
  }

  void _onPurchase(BuildContext context) =>
      PurchaseRouteData(item.id).go(context);
}
