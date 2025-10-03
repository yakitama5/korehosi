part of 'routes_data.dart';

final _settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SETTINGS');

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
      ],
    ),
  ],
);

class BranchSettingsData extends StatefulShellBranchData {
  const BranchSettingsData();
}

class SettingsRouteData extends GoRouteData with _$SettingsRouteData {
  const SettingsRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _settingsNavigatorKey;
  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class GroupsRouteData extends GoRouteData with _$GroupsRouteData {
  const GroupsRouteData();

  static const path = 'groups';

  @override
  Widget build(BuildContext context, GoRouterState state) => const GroupsPage();
}

class GroupRouteData extends GoRouteData with _$GroupRouteData {
  const GroupRouteData(this.groupId);

  static const path = 'group/:groupId';

  final String groupId;

  @override
  Widget build(BuildContext context, GoRouterState state) => ProviderScope(
    overrides: [
      GroupDetailProviders.groupIdProvider.overrideWithValue(groupId),
    ],
    child: const GroupPage(),
  );
}

class ProfileRouteData extends GoRouteData with _$ProfileRouteData {
  const ProfileRouteData();

  static const path = 'profile';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

class LicenseRouteData extends GoRouteData with _$LicenseRouteData {
  const LicenseRouteData();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MyLincensePage();
}

class AccountRouteData extends GoRouteData with _$AccountRouteData {
  const AccountRouteData();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountPage();
}
