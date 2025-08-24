import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/group/state/group_detail_providers.dart';
import '../../../application/usecase/group/state/share_link_page_providers.dart';
import '../../../application/usecase/item/state/item_detail_providers.dart';
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
import '../../pages/user/onboard_page.dart';
import '../../pages/user/profile_page.dart';
import '../../pages/user/welcome_page.dart';
import 'navigator_page.dart';

part 'analyze_branch.dart';
part 'item_branch.dart';
part 'routes_data.g.dart';
part 'settings_branch.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

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
        itemBranch,
        analyzeBranch,
        settingsBranch,
      ],
    ),
  ],
)
class BaseShellSrouteData extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = _rootNavigatorKey;

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      AppListner(navigator);
}

class RootRouteData extends GoRouteData with _$RootRouteData {
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

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

class BottomNavitorShellRouteData extends StatefulShellRouteData {
  const BottomNavitorShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return NavigatorPage(
      navigationShell: navigationShell,
    );
  }

  static const String $restorationScopeId = 'app_router';
}

class OnboardStartRouteData extends GoRouteData with _$OnboardStartRouteData {
  const OnboardStartRouteData();

  static const path = '/start';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WelcomePage();
}

class AccountLinkRouteData extends GoRouteData with _$AccountLinkRouteData {
  const AccountLinkRouteData();

  static const path = 'account_link';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountLinkPage();
}

class OnboardFormRouteData extends GoRouteData with _$OnboardFormRouteData {
  const OnboardFormRouteData();

  static const path = '/onboard_form';

  @override
  Widget build(BuildContext context, GoRouterState state) => OnboardPage();
}

class ShareLinkRouteData extends GoRouteData with _$ShareLinkRouteData {
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

class PhotoPreviewRouteData extends GoRouteData with _$PhotoPreviewRouteData {
  const PhotoPreviewRouteData({this.index, this.$extra});

  static const path = '/preview';

  final List<String>? $extra;
  final int? index;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: PhotoViewer(
        imagesPath: $extra ?? [],
        initialIndex: index ?? 0,
        backgroundDecoration: const BoxDecoration(
          color: Colors.black,
        ),
      ),
      fullscreenDialog: true,
    );
  }
}
