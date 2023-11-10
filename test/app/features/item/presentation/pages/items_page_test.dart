import 'package:family_wish_list/app/application/model/item/item_order_key.dart';
import 'package:family_wish_list/app/application/model/item/item_order_model.dart';
import 'package:family_wish_list/app/application/model/order.dart';
import 'package:family_wish_list/app/application/usecase/item/state/items_filter_purchase_status_provider.dart';
import 'package:family_wish_list/app/application/usecase/item/state/items_filter_wish_rank_provider.dart';
import 'package:family_wish_list/app/application/usecase/item/state/items_order_provider.dart';
import 'package:family_wish_list/app/domain/purchase/value_object/purchase_status.dart';
import 'package:family_wish_list/app/domain/user/value_object/age_group.dart';
import 'package:family_wish_list/app/infrastructure/firebase/firestore/extension/collection_reference.dart';
import 'package:family_wish_list/app/infrastructure/firebase/firestore/model/firestore_item_model.dart';
import 'package:family_wish_list/app/presentation/components/importer.dart';
import 'package:family_wish_list/app/presentation/pages/analyze/analyze_page.dart';
import 'package:family_wish_list/app/presentation/pages/group/components/not_group_view.dart';
import 'package:family_wish_list/app/presentation/pages/item/item_edit_page.dart';
import 'package:family_wish_list/app/presentation/pages/item/items_page.dart';
import 'package:family_wish_list/app/presentation/pages/settings/settings_page.dart';
import 'package:family_wish_list/app/presentation/routes/importer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../test_utils/importer.dart';

void main() {
  group('グループ未所属', () {
    final testAgent = TestAgent();
    setUp(
      () => testAgent.setUpSignIned(
        firestoreSetup: (firestore) async {
          await firestore
              .usersRef()
              .doc(testAgent.mockUserModel.id)
              .update({'joinGroupIds': []});
          return firestore;
        },
      ),
    );
    tearDown(testAgent.tearDown);

    testWidgets('画面表示', (tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // 検証
      expectItemsPageNotJoinGroup(tester, testAgent);
    });
  });

  group('ほしいもの0件', () {
    final testAgent = TestAgent();
    setUp(testAgent.setUpSignIned);
    tearDown(testAgent.tearDown);

    testWidgets('画面表示', (tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // 検証
      expectItemsPageEmptyItem(tester, testAgent);
    });
  });

  group('ほしいもの50件', () {
    final testAgent = TestAgent();
    final items = List.generate(
      50,
      (index) => FirestoreItemModel(
        id: 'Item - $index',
        name: 'ジャングルジム($index)',
        wishRank: index % 5,
      ),
    );
    setUp(
      () => testAgent.setUpSignIned(
        firestoreSetup: (firestore) async {
          await Future.wait(
            items.map(
              (e) => firestore
                  .itemsRef(testAgent.mockGroupModel.id)
                  .doc(e.id)
                  .set(e.toJson()),
            ),
          );
          return firestore;
        },
      ),
    );
    tearDown(testAgent.tearDown);

    final l10n = testAgent.l10n;

    testWidgets('画面表示', (tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // 検証
      expectItemsPageHasItem(tester, testAgent);
    });

    testWidgets('アカウントボタン押下', (tester) async {
      // アカウントボタンの押下
      await _pumpPage(tester, testAgent);
      await tester.tap(find.widgetWithIcon(IconButton, Icons.account_circle));
      await tester.pumpAndSettle();

      // 表示
      expect(find.text(testAgent.mockUserModel.name!), findsOneWidget);
      expect(find.widgetWithIcon(IconButton, Icons.edit), findsOneWidget);
      expect(
        find.text(testAgent.mockUserModel.ageGroup.getLocaleName(l10n)),
        findsOneWidget,
      );
      expect(
        find.widgetWithText(
          RadioListTile<String>,
          testAgent.mockGroupModel.name,
        ),
        findsOneWidget,
      );
      expect(find.widgetWithText(TextButton, l10n.ok), findsOneWidget);
      expect(find.widgetWithText(TextButton, l10n.cancel), findsOneWidget);
    });

    testWidgets('ほしいもの追加ボタン押下', (tester) async {
      // ほしいもの追加ボタン押下
      await _pumpPage(tester, testAgent);
      await tester
          .tap(find.widgetWithText(FloatingActionButton, l10n.addWishList));
      await tester.pumpAndSettle();

      // 表示
      expect(find.byType(ItemEditPage), findsOneWidget);
    });

    testWidgets('ふりかえりボタン押下', (tester) async {
      // ふりかえりボタン押下
      await _pumpPage(tester, testAgent);
      await tester
          .tap(find.widgetWithText(NavigationDestination, l10n.analyze));
      await pumpRepeatableOneSec(tester, 10);

      // 表示
      expect(find.byType(AnalyzePage), findsOneWidget);
    });

    testWidgets('せっていボタン押下', (tester) async {
      // せっていボタン押下
      await _pumpPage(tester, testAgent);
      await tester
          .tap(find.widgetWithText(NavigationDestination, l10n.settings));
      await pumpRepeatableOneSec(tester, 10);

      // 表示
      expect(find.byType(SettingsPage), findsOneWidget);
    });

    testWidgets('並び順変更', (tester) async {
      // TODO(yakitama5): 並び順を押して、ダイアログを押下
      // 並び順押下

      // 検証

      // 変更すること
    });
  });
}

///
/// Expects
///
void expectItemsPageNotJoinGroup(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(ItemsPage), findsOneWidget);
  expect(find.widgetWithText(SliverAppBar, l10n.wishList), findsOneWidget);
  expect(find.widgetWithIcon(IconButton, Icons.account_circle), findsOneWidget);
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.orderKeyCreatedAt),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.selectNumberText(2)),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.wishRank),
    findsOneWidget,
  );
  expect(find.byType(NotGroupView), findsOneWidget);
  expect(find.text(l10n.addWishList), findsNothing);
  expectNavigationBarCurrentWishList(tester, testAgent);

  // 状態
  final container = _providerContainer(tester);
  final order = container.read(itemsOrderProvider);
  final status = container.read(itemsFilterPurchaseStatusProvider);
  final wishRank = container.read(itemsFilterWishRankProvider);

  expect(
    order,
    const ItemOrderModel(
      key: ItemOrderKey.createdAt,
      sortOrder: SortOrder.desc,
    ),
  );
  expect(status, {
    PurchaseStatus.notPurchased,
    PurchaseStatus.purchasePlan,
  });
  expect(wishRank, null);
}

void expectItemsPageEmptyItem(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(ItemsPage), findsOneWidget);
  expect(find.widgetWithText(SliverAppBar, l10n.wishList), findsOneWidget);
  expect(find.widgetWithIcon(IconButton, Icons.account_circle), findsOneWidget);
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.orderKeyCreatedAt),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.selectNumberText(2)),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.wishRank),
    findsOneWidget,
  );
  expectNavigationBarCurrentWishList(tester, testAgent);
  expect(find.text(l10n.searchEmptyMessage(l10n.wishList)), findsOneWidget);
  expect(find.text(l10n.addWishList), findsOneWidget);

  // 状態
  final container = _providerContainer(tester);
  final order = container.read(itemsOrderProvider);
  final status = container.read(itemsFilterPurchaseStatusProvider);
  final wishRank = container.read(itemsFilterWishRankProvider);

  expect(
    order,
    const ItemOrderModel(
      key: ItemOrderKey.createdAt,
      sortOrder: SortOrder.desc,
    ),
  );
  expect(status, {
    PurchaseStatus.notPurchased,
    PurchaseStatus.purchasePlan,
  });
  expect(wishRank, null);
}

void expectItemsPageHasItem(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(ItemsPage), findsOneWidget);
  expect(find.widgetWithText(SliverAppBar, l10n.wishList), findsOneWidget);
  expect(find.widgetWithIcon(IconButton, Icons.account_circle), findsOneWidget);
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.orderKeyCreatedAt),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.selectNumberText(2)),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(LeadingIconInputChip, l10n.wishRank),
    findsOneWidget,
  );
  expectNavigationBarCurrentWishList(tester, testAgent);
  expect(find.text(l10n.searchEmptyMessage(l10n.wishList)), findsNothing);
  expect(find.text(l10n.addWishList), findsOneWidget);

  // 状態
  final container = _providerContainer(tester);
  final order = container.read(itemsOrderProvider);
  final status = container.read(itemsFilterPurchaseStatusProvider);
  final wishRank = container.read(itemsFilterWishRankProvider);

  expect(
    order,
    const ItemOrderModel(
      key: ItemOrderKey.createdAt,
      sortOrder: SortOrder.desc,
    ),
  );
  expect(status, {
    PurchaseStatus.notPurchased,
    PurchaseStatus.purchasePlan,
  });
  expect(wishRank, null);
}

///
/// Pumps
///
Future<void> _pumpPage(
  WidgetTester tester,
  TestAgent testAgent,
) async {
  await tester.binding.setSurfaceSize(TestAgent.deviceSize);
  await tester.pumpWidget(
    testAgent.mockApp(
      location: const ItemsRouteData().location,
    ),
  );

  await pumpRepeatableOneSec(tester, 5);
}

///
/// Variables
///
ProviderContainer _providerContainer(WidgetTester tester) {
  final context = tester.element(find.byType(ItemsPage));
  return ProviderScope.containerOf(context);
}
