import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';

import '../../../application/extension/number_extension.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../domain/purchase/entity/purchase.dart';
import '../../../domain/purchase/value_object/purchase_status.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../components/importer.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import 'components/detail_item_name.dart';
import 'components/item_images.dart';
import 'components/rating_icon.dart';

class ItemPage extends HookConsumerWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasItemFuture = ref.watch(
      ItemDetailProviders.itemProvider.selectAsync((data) => data != null),
    );
    final l10n = ref.watch(l10nProvider);
    return FutureBuilder(
      future: hasItemFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }

        // 存在しない場合は削除済として扱う
        if (snapshot.data == false) {
          return ErrorView(l10n.deletedMessage, null);
        }

        return Scaffold(
          appBar: AppBar(
            title: const _Title(),
            actions: [
              EditIconButton(
                onPressed: () => _onEdit(context, ref),
              ),
            ],
          ),
          body: const SingleChildScrollView(
            child: PagePadding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailItemImages(),
                  Gap(8),
                  _PurchaseStatus(),
                  Gap(32),
                  DetailItemName(),
                  Gap(16),
                  _WanterName(),
                  Gap(16),
                  _WishRank(),
                  Gap(16),
                  _WishSeason(),
                  Gap(16),
                  _Urls(),
                  Gap(16),
                  _Memo(),
                  Gap(40),
                  _PurchaseInfo(),
                  Gap(160),
                ],
              ),
            ),
          ),
          floatingActionButton: const _Fab(),
        );
      },
    );
  }

  /// 編集押下
  Future<void> _onEdit(BuildContext context, WidgetRef ref) async {
    // 画面遷移
    final item = ref.read(ItemDetailProviders.itemProvider).value;
    ItemEditRouteData(item!.id).go(context);
  }
}

/// 画面タイトル
class _Title extends HookConsumerWidget {
  const _Title();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(
      ItemDetailProviders.itemProvider.select((value) => value.value?.name),
    );

    return Text(name ?? '');
  }
}

/// 購入状況
class _PurchaseStatus extends HookConsumerWidget {
  const _PurchaseStatus();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = ref.watch(l10nProvider);

    final status = ref.watch(
      ItemDetailProviders.purchaseProvider.select((snap) => snap.value.status),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(status.iconData, color: colorScheme.primary),
        const Gap(8),
        Text(
          status.localeName(l10n),
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}

/// 欲しい人の名前
class _WanterName extends HookConsumerWidget {
  const _WanterName();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final name = ref.watch(
      ItemDetailProviders.itemProvider
          .select((value) => value.value?.wanterName),
    );

    return TextWithLabel(
      name,
      label: l10n.wanterName,
    );
  }
}

/// 欲しい度
class _WishRank extends HookConsumerWidget {
  const _WishRank();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final wishRank = ref.watch(
      ItemDetailProviders.itemProvider.select((value) => value.value?.wishRank),
    );

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

/// ほしい時期
class _WishSeason extends HookConsumerWidget {
  const _WishSeason();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final wishSeason = ref.watch(
      ItemDetailProviders.itemProvider
          .select((value) => value.value?.wishSeason),
    );

    return TextWithLabel(
      wishSeason,
      label: l10n.wishSeasonLabel,
    );
  }
}

/// URL一覧
class _Urls extends HookConsumerWidget {
  const _Urls();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final urls = ref.watch(
      ItemDetailProviders.itemProvider.select((value) => value.value?.urls),
    );

    // 未設定の場合はダミー要素だけ表示
    if (urls == null || urls.isEmpty) {
      return TextWithLabel(null, label: l10n.url);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.url, style: textTheme.labelMedium),
        ...urls.map(
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

/// メモ
class _Memo extends HookConsumerWidget {
  const _Memo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final memo = ref.watch(
      ItemDetailProviders.itemProvider.select((value) => value.value?.memo),
    );

    return TextWithLabel(
      memo,
      label: l10n.memo,
    );
  }
}

/// 購入情報
/// ログインユーザーが子供の場合は表示しない
class _PurchaseInfo extends HookConsumerWidget {
  const _PurchaseInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 購入情報は子供には表示しない
    final isChild = ref.watch(
      authUserProvider
          .select((value) => value.value?.ageGroup == AgeGroup.child),
    );
    if (isChild) {
      return const SizedBox.shrink();
    }

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
