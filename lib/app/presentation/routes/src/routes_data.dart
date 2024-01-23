import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/group/state/share_link_page_providers.dart';
import '../../app_listner.dart';
import '../../pages/group/share_link_page.dart';
import '../../pages/item/components/photo_viewer.dart';
import '../../pages/user/account_link_page.dart';
import '../../pages/user/onboard_form_page.dart';
import '../../pages/user/onboard_start_page.dart';
import 'analyze_branch.dart';
import 'item_branch.dart';
import 'navigator_page.dart';
import 'settings_branch.dart';

part 'routes_data.g.dart';

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
    return navigationShell;
  }

  static const String $restorationScopeId = 'app_router';

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
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountLinkPage();
}

class OnboardFormRouteData extends GoRouteData {
  const OnboardFormRouteData();

  static const path = '/onboard_form';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardFormPage();
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
