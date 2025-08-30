part of 'routes_data.dart';

final _itemNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'ITEM');

const itemBranch = TypedStatefulShellBranch<BranchItemsData>(
  routes: [
    TypedGoRoute<ItemsRouteData>(
      path: ItemsRouteData.path,
      routes: [
        TypedGoRoute<ItemRouteData>(
          path: ItemRouteData.path,
          routes: [
            TypedGoRoute<ItemEditRouteData>(
              path: ItemEditRouteData.path,
            ),
            TypedGoRoute<PurchaseRouteData>(
              path: PurchaseRouteData.path,
            ),
          ],
        ),
        TypedGoRoute<ItemCreateRouteData>(
          path: ItemCreateRouteData.path,
        ),
      ],
    ),
  ],
);

class BranchItemsData extends StatefulShellBranchData {
  const BranchItemsData();
}

class ItemsRouteData extends GoRouteData with _$ItemsRouteData {
  const ItemsRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _itemNavigatorKey;
  static const path = '/items';

  @override
  Widget build(BuildContext context, GoRouterState state) => const ItemsPage();
}

class ItemRouteData extends GoRouteData with _$ItemRouteData {
  const ItemRouteData(this.itemId);

  static const path = 'item/:itemId';

  final String itemId;

  @override
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
        overrides: [
          // 欲しい物のIDだけを指定
          // 明細は依存Providerが勝手に処理してくれる
          ItemDetailProviders.itemIdProvider.overrideWithValue(itemId),
        ],
        child: const ItemPage(),
      );
}

class PurchaseRouteData extends GoRouteData with _$PurchaseRouteData {
  const PurchaseRouteData(this.itemId);

  static const path = 'purchase';

  final String itemId;

  @override
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
        overrides: [
          // 欲しい物のIDだけを指定
          // 明細は依存Providerが勝手に処理してくれる
          ItemDetailProviders.itemIdProvider.overrideWithValue(itemId),
        ],
        child: const PurchasePage(),
      );
}

class ItemCreateRouteData extends GoRouteData with _$ItemCreateRouteData {
  const ItemCreateRouteData();

  static const path = 'edit';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(
        child: ProviderScope(
          overrides: [
            // 欲しい物のIDだけを指定
            // 明細は依存Providerが勝手に処理してくれる
            ItemDetailProviders.itemIdProvider.overrideWithValue(null),
          ],
          child: const ItemEditPage(),
        ),
        fullscreenDialog: true,
      );
}

class ItemEditRouteData extends GoRouteData with _$ItemEditRouteData {
  const ItemEditRouteData(this.itemId);

  static const path = 'edit';

  final String itemId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(
        child: ProviderScope(
          overrides: [
            // 欲しい物のIDだけを指定
            // 明細は依存Providerが勝手に処理してくれる
            ItemDetailProviders.itemIdProvider.overrideWithValue(itemId),
          ],
          child: const ItemEditPage(),
        ),
        fullscreenDialog: true,
      );
}
