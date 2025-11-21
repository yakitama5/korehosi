part of 'routes_data.dart';

final settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SETTINGS');

const settingsBranch = TypedStatefulShellBranch<BranchSettingsData>(
  routes: [
    TypedGoRoute<SettingsRouteData>(
      path: SettingsRouteData.path,
      routes: [
        TypedGoRoute<GroupsRouteData>(
          path: GroupsRouteData.path,
          routes: [TypedGoRoute<GroupRouteData>(path: GroupRouteData.path)],
        ),
        TypedGoRoute<ProfileRouteData>(path: ProfileRouteData.path),
        TypedGoRoute<AccountRouteData>(path: AccountRouteData.path),
        TypedGoRoute<LicenseRouteData>(path: LicenseRouteData.path),
        TypedGoRoute<SettingsUiStylePageRoute>(
          path: SettingsUiStylePageRoute.path,
        ),
        TypedGoRoute<SettingsThemeColorPageRoute>(
          path: SettingsThemeColorPageRoute.path,
        ),
        TypedGoRoute<SettingsThemeModePageRoute>(
          path: SettingsThemeModePageRoute.path,
        ),
      ],
    ),
  ],
);

class BranchSettingsData extends StatefulShellBranchData {
  const BranchSettingsData();
}

class SettingsRouteData extends GoRouteData with $SettingsRouteData {
  const SettingsRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class GroupsRouteData extends GoRouteData with $GroupsRouteData {
  const GroupsRouteData();

  static const path = 'groups';

  @override
  Widget build(BuildContext context, GoRouterState state) => const GroupsPage();
}

class GroupRouteData extends GoRouteData with $GroupRouteData {
  const GroupRouteData(this.groupId);

  static const path = 'group/:groupId';

  final String groupId;

  @override
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
    overrides: [
      GroupDetailProviders.groupIdProvider.overrideWithValue(GroupId(groupId)),
    ],
    child: const GroupPage(),
  );
}

class ProfileRouteData extends GoRouteData with $ProfileRouteData {
  const ProfileRouteData();

  static const path = 'profile';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

class LicenseRouteData extends GoRouteData with $LicenseRouteData {
  const LicenseRouteData();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MyLincensePage();
}

class AccountRouteData extends GoRouteData with $AccountRouteData {
  const AccountRouteData();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountPage();
}

class SettingsUiStylePageRoute extends GoRouteData
    with $SettingsUiStylePageRoute {
  const SettingsUiStylePageRoute();

  static const path = 'ui_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsUiStylePage();
}

class SettingsThemeColorPageRoute extends GoRouteData
    with $SettingsThemeColorPageRoute {
  const SettingsThemeColorPageRoute();

  static const path = 'color_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeColorPage();
}

class SettingsThemeModePageRoute extends GoRouteData
    with $SettingsThemeModePageRoute {
  const SettingsThemeModePageRoute();

  static const path = 'theme_mode';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsThemeModePage();
}
