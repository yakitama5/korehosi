import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/group/state/group_page_providers.dart';
import '../../../application/usecase/group/state/share_link_page_providers.dart';
import '../../../application/usecase/item/state/item_page_providers.dart';
import '../../app_listner.dart';
import '../../pages/analyze/analyze_detail_page.dart';
import '../../pages/analyze/analyze_page.dart';
import '../../pages/group/group_page.dart';
import '../../pages/group/groups_page.dart';
import '../../pages/group/share_link_page.dart';
import '../../pages/item/components/photo_viewer.dart';
import '../../pages/item/item_edit_page.dart';
import '../../pages/item/item_page.dart';
import '../../pages/item/items_page.dart';
import '../../pages/item/purchase_page.dart';
import '../../pages/settings/settings_page.dart';
import '../../pages/user/account_link_page.dart';
import '../../pages/user/account_page.dart';
import '../../pages/user/license_page.dart';
import '../../pages/user/onboard_form_page.dart';
import '../../pages/user/onboard_start_page.dart';
import '../../pages/user/profile_page.dart';
import 'custom_transition_pages.dart';
import 'navigator_page.dart';

part 'routes_data.g.dart';

final GlobalKey<NavigatorState> baseNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<BaseShellSrouteData>(
  routes: [
    TypedGoRoute<RootRouteData>(path: RootRouteData.path),
    TypedGoRoute<OnboardStartRouteData>(
      path: OnboardStartRouteData.path,
      routes: [
        TypedGoRoute<AccountLinkRouteData>(path: AccountLinkRouteData.path),
      ],
    ),
    TypedGoRoute<ShareLinkRouteData>(path: ShareLinkRouteData.path),
    TypedGoRoute<PhotoPreviewRouteData>(path: PhotoPreviewRouteData.path),
    TypedGoRoute<OnboardFormRouteData>(path: OnboardFormRouteData.path),
    TypedStatefulShellRoute<BottomNavitorShellRouteData>(
      branches: [
        TypedStatefulShellBranch<BranchItemsData>(
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
        ),
        TypedStatefulShellBranch<BranchAnalyzeData>(
          routes: [
            TypedGoRoute<AnalyzeRouteData>(
              path: AnalyzeRouteData.path,
              routes: [
                TypedGoRoute<AnalyzeDetailRouteData>(
                  path: AnalyzeDetailRouteData.path,
                ),
              ],
            ),
          ],
        ),
        TypedStatefulShellBranch<BranchSettingsData>(
          routes: [
            TypedGoRoute<SettingsRouteData>(
              path: SettingsRouteData.path,
              routes: [
                TypedGoRoute<GroupsRouteData>(
                  path: GroupsRouteData.path,
                  routes: [
                    TypedGoRoute<GroupRouteData>(
                      path: GroupRouteData.path,
                    ),
                  ],
                ),
                TypedGoRoute<ProfileRouteData>(path: ProfileRouteData.path),
                TypedGoRoute<AccountRouteData>(path: AccountRouteData.path),
                TypedGoRoute<LicenseRouteData>(path: LicenseRouteData.path),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class BaseShellSrouteData extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = baseNavigatorKey;
  static final $observers = [HeroController()];

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      AppListner(navigator);
}

class RootRouteData extends GoRouteData {
  const RootRouteData();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      // ぐるぐる回すだけ
      const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
}

final GlobalKey<NavigatorState> bottomNavitorKey = GlobalKey<NavigatorState>();

class BottomNavitorShellRouteData extends StatefulShellRouteData {
  const BottomNavitorShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = bottomNavitorKey;
  static final $observers = [HeroController()];

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static const String $restorationScopeId = 'restorationScopeId';

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return NavigatorPage(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

class BranchItemsData extends StatefulShellBranchData {
  const BranchItemsData();
}

class BranchAnalyzeData extends StatefulShellBranchData {
  const BranchAnalyzeData();
}

class BranchSettingsData extends StatefulShellBranchData {
  const BranchSettingsData();
}

class OnboardStartRouteData extends GoRouteData {
  const OnboardStartRouteData();

  static const path = '/start';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardStartPage();
}

class AccountLinkRouteData extends GoRouteData {
  const AccountLinkRouteData();

  static const path = 'account_link';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: const AccountLinkPage(),
      );
}

class OnboardFormRouteData extends GoRouteData {
  const OnboardFormRouteData();

  static const path = '/onboard_form';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: const OnboardFormPage(),
      );
}

class ItemsRouteData extends GoRouteData {
  const ItemsRouteData();

  static const path = '/items';

  @override
  Widget build(BuildContext context, GoRouterState state) => const ItemsPage();
}

class ItemRouteData extends GoRouteData {
  const ItemRouteData(this.itemId);

  static const path = 'item/:itemId';

  final String itemId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: ProviderScope(
          overrides: [
            // 欲しい物のIDだけを指定
            // 明細は依存Providerが勝手に処理してくれる
            ItemPageProviders.itemIdProvider.overrideWithValue(itemId),
          ],
          child: const ItemPage(),
        ),
      );
}

class PurchaseRouteData extends GoRouteData {
  const PurchaseRouteData(this.itemId);

  static const path = 'purchase';

  final String itemId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.fullScreenDialogTransition(
        context: context,
        child: ProviderScope(
          overrides: [
            // 欲しい物のIDだけを指定
            // 明細は依存Providerが勝手に処理してくれる
            ItemPageProviders.itemIdProvider.overrideWithValue(itemId),
          ],
          child: const PurchasePage(),
        ),
      );
}

class ItemCreateRouteData extends GoRouteData {
  const ItemCreateRouteData();

  static const path = 'edit';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.fullScreenDialogTransition(
        context: context,
        child: ProviderScope(
          overrides: [
            // 欲しい物のIDだけを指定
            // 明細は依存Providerが勝手に処理してくれる
            ItemPageProviders.itemIdProvider.overrideWithValue(null),
          ],
          child: const ItemEditPage(),
        ),
      );
}

class ItemEditRouteData extends GoRouteData {
  const ItemEditRouteData(this.itemId);

  static const path = 'edit';

  final String itemId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.fullScreenDialogTransition(
        context: context,
        child: ProviderScope(
          overrides: [
            // 欲しい物のIDだけを指定
            // 明細は依存Providerが勝手に処理してくれる
            ItemPageProviders.itemIdProvider.overrideWithValue(itemId),
          ],
          child: const ItemEditPage(),
        ),
      );
}

class SettingsRouteData extends GoRouteData {
  const SettingsRouteData();

  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class GroupsRouteData extends GoRouteData {
  const GroupsRouteData();

  static const path = 'groups';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: const GroupsPage(),
      );
}

class GroupRouteData extends GoRouteData {
  const GroupRouteData(this.groupId);

  static const path = 'group/:groupId';

  final String groupId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: ProviderScope(
          overrides: [
            GroupPageProviders.groupIdProvider.overrideWithValue(groupId),
          ],
          child: const GroupPage(),
        ),
      );
}

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  static const path = 'profile';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.fullScreenDialogTransition(
        context: context,
        child: const ProfilePage(),
      );
}

class LicenseRouteData extends GoRouteData {
  const LicenseRouteData();

  static const path = 'license';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: const MyLincensePage(),
      );
}

class AccountRouteData extends GoRouteData {
  const AccountRouteData();

  static const path = 'account';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: const AccountPage(),
      );
}

class AnalyzeRouteData extends GoRouteData {
  const AnalyzeRouteData();

  static const path = '/analyze';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnalyzePage();
}

class AnalyzeDetailRouteData extends GoRouteData {
  const AnalyzeDetailRouteData({this.index});

  static const path = 'analyze_detail';

  final int? index;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      PageTransition.slideTransition(
        context: context,
        child: AnalyzeDetailPage(initialIndex: index),
      );
}

class ShareLinkRouteData extends GoRouteData {
  const ShareLinkRouteData(this.shareLinkId);

  static const path = '/share_link/:shareLinkId';

  final String shareLinkId;

  @override
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
        overrides: [
          ShareLinkPageProviders.idProvider.overrideWithValue(shareLinkId),
        ],
        child: const ShareLinkPage(),
      );
}

class PhotoPreviewRouteData extends GoRouteData {
  const PhotoPreviewRouteData({this.index, this.$extra});

  static const path = '/preview';

  final List<String>? $extra;
  final int? index;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return PageTransition.fullScreenDialogTransition(
      context: context,
      child: PhotoViewer(
        imagesPath: $extra ?? [],
        initialIndex: index ?? 0,
        backgroundDecoration: const BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  }
}
