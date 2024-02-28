import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';

import '../../../application/extension/number_extension.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../domain/item/entity/item.dart';
import '../../../domain/purchase/entity/purchase.dart';
import '../../../domain/purchase/value_object/purchase_status.dart';
import '../../../domain/user/entity/user.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../components/importer.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import 'components/item_images.dart';
import 'components/rating_icon.dart';

class ItemPage extends HookConsumerWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final authUser = ref.watch(authUserProvider);
    final item = ref.watch(ItemDetailProviders.itemProvider);
    final purchase = ref.watch(ItemDetailProviders.purchaseProvider);

    // 欲しい物と購入情報に応じて判定を行う
    return switch ((item, purchase, authUser)) {
      // 欲しい物が見つからない場合は削除された扱い
      (
        AsyncData(value: null),
        AsyncData(value: final _?),
        AsyncData(value: final _?),
      ) =>
        ErrorView(l10n.deletedMessage, null),

      // 欲しい物が存在する場合は明細を表示
      (
        AsyncData(value: final itemData),
        AsyncData(value: final purchaseData?),
        AsyncData(value: final authUser),
      ) =>
        _ItemDetailView(
          item: itemData!,
          purchase: purchaseData,
          authUser: authUser!,
        ),

      // いずれかがエラーの場合はエラー
      (AsyncError(error: final error, stackTrace: final stackTrace), _, _) ||
      (_, AsyncError(error: final error, stackTrace: final stackTrace), _) ||
      (_, _, AsyncError(error: final error, stackTrace: final stackTrace)) =>
        ErrorView(error, stackTrace),

      // 一瞬なのでローディング中は何も表示しない
      _ => const SizedBox.shrink(),
    };
  }
}

class _ItemDetailView extends HookConsumerWidget {
  const _ItemDetailView({
    required this.item,
    this.purchase,
    required this.authUser,
  });

  final Item item;
  final Purchase? purchase;
  final User authUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        actions: [
          EditIconButton(
            onPressed: () => _onEdit(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: PagePadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemImages(imagesPath: item.imagesPath),
              const Gap(8),
              _PurchaseStatus(
                purchaseStatus: purchase.status,
              ),
              const Gap(32),
              TextWithLabel(
                item.name,
                label: l10n.name,
              ),
              const Gap(16),
              TextWithLabel(
                item.wanterName,
                label: l10n.wanterName,
              ),
              const Gap(16),
              _WishRank(
                wishRank: item.wishRank,
              ),
              const Gap(16),
              TextWithLabel(
                item.wishSeason,
                label: l10n.wishSeasonLabel,
              ),
              const Gap(16),
              _Urls(
                urls: item.urls,
              ),
              const Gap(16),
              TextWithLabel(
                item.memo,
                label: l10n.memo,
              ),
              const Gap(40),
              _PurchaseInfo(
                purchase: purchase,
                user: authUser,
              ),
              const Gap(160),
            ],
          ),
        ),
      ),
      floatingActionButton: const _Fab(),
    );
  }

  /// 編集押下
  ///
  /// 編集画面に遷移する
  void _onEdit(BuildContext context) => ItemEditRouteData(item.id).go(context);
}

/// 購入状況
class _PurchaseStatus extends HookConsumerWidget {
  const _PurchaseStatus({required this.purchaseStatus});

  final PurchaseStatus purchaseStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = ref.watch(l10nProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(purchaseStatus.iconData, color: colorScheme.primary),
        const Gap(8),
        Text(
          purchaseStatus.localeName(l10n),
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}

/// 欲しい度
class _WishRank extends HookConsumerWidget {
  const _WishRank({this.wishRank});

  final double? wishRank;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.wishRank,
          style: textTheme.labelMedium,
        ),
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
class _Urls extends HookConsumerWidget {
  const _Urls({this.urls});

  final List<String>? urls;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;

    // 未設定の場合はダミー要素だけ表示
    if (urls == null || urls!.isEmpty) {
      return TextWithLabel(null, label: l10n.url);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.url, style: textTheme.labelMedium),
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
class _PurchaseInfo extends HookConsumerWidget {
  const _PurchaseInfo({
    this.purchase,
    required this.user,
  });

  final Purchase? purchase;
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 購入情報は子供には表示しない
    final isChild = user.ageGroup == AgeGroup.child;
    if (isChild) {
      return const SizedBox.shrink();
    }

    // TODO(yakitama5): ここからリファクタリングの続き
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _PurchaseInfoTitle(),
        Gap(16),
        _Price(),
        Gap(16),
        _PlanDate(),
        Gap(16),
        _SentAt(),
        Gap(16),
        _BuyerName(),
        Gap(16),
        _PurchaseMemo(),
      ],
    );
  }
}

/// 購入情報のタイトル
class _PurchaseInfoTitle extends HookConsumerWidget {
  const _PurchaseInfoTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.purchaseInfoTitle,
          style: textTheme.titleMedium,
        ),
        Text(
          l10n.purchaseInfoCaption,
          style: textTheme.labelMedium
              ?.copyWith(color: colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }
}

/// 金額
class _Price extends HookConsumerWidget {
  const _Price();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final price = ref.watch(
      ItemDetailProviders.purchaseProvider.select((snap) => snap.value?.price),
    );

    return TextWithLabel(
      price?.formatCurrency(locale: l10n.localeName),
      label: l10n.price,
    );
  }
}

/// 購入予定日付
class _PlanDate extends HookConsumerWidget {
  const _PlanDate();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final planDate = ref.watch(
      ItemDetailProviders.purchaseProvider
          .select((snap) => snap.value?.planDate),
    );
    final formatter = DateFormat.yMMMd(l10n.localeName);

    return TextWithLabel(
      planDate != null ? formatter.format(planDate) : null,
      label: l10n.purchasePlanDateTime,
    );
  }
}

/// 渡した日付
class _SentAt extends HookConsumerWidget {
  const _SentAt();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final sentAt = ref.watch(
      ItemDetailProviders.purchaseProvider.select((snap) => snap.value?.sentAt),
    );
    final formatter = DateFormat.yMMMd(l10n.localeName);

    return TextWithLabel(
      sentAt != null ? formatter.format(sentAt) : null,
      label: l10n.sentAt,
    );
  }
}

/// 買った人の名前
class _BuyerName extends HookConsumerWidget {
  const _BuyerName();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final buyerName = ref.watch(
      ItemDetailProviders.purchaseProvider
          .select((snap) => snap.value?.buyerName),
    );

    return TextWithLabel(
      buyerName,
      label: l10n.buyerName,
    );
  }
}

/// 購入情報のメモ
class _PurchaseMemo extends HookConsumerWidget {
  const _PurchaseMemo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final memo = ref.watch(
      ItemDetailProviders.purchaseProvider.select((value) => value.value?.memo),
    );

    return TextWithLabel(
      memo,
      label: l10n.memo,
    );
  }
}

/// 購入/購入予定ボタン
/// ログインユーザーが子供の場合は表示しない
class _Fab extends HookConsumerWidget {
  const _Fab();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    // 子供の場合はボタンを非表示
    final isChild = ref.watch(
      authUserProvider
          .select((value) => value.value?.ageGroup == AgeGroup.child),
    );
    if (isChild) {
      return const SizedBox.shrink();
    }

    return FloatingActionButton.extended(
      onPressed: () => _onPurchase(context, ref),
      icon: const Icon(Icons.shopping_bag),
      label: Text(l10n.purchaseOrpurchasePlan),
    );
  }

  void _onPurchase(BuildContext context, WidgetRef ref) {
    // 画面遷移
    final itemId = ref.watch(ItemDetailProviders.itemIdProvider);
    PurchaseRouteData(itemId!).go(context);
  }
}
