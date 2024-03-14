import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/group/state/group_detail_providers.dart';
import '../../pages/group/group_page.dart';
import '../../pages/group/groups_page.dart';
import '../../pages/settings/settings_page.dart';
import '../../pages/user/account_page.dart';
import '../../pages/user/license_page.dart';
import '../../pages/user/profile_page.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SETTINGS');

const settingsBranch = TypedStatefulShellBranch<BranchSettingsData>(
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
);

class BranchSettingsData extends StatefulShellBranchData {
  const BranchSettingsData();
}

class SettingsRouteData extends GoRouteData {
  const SettingsRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class GroupsRouteData extends GoRouteData {
  const GroupsRouteData();

  static const path = 'groups';

  @override
  Widget build(BuildContext context, GoRouterState state) => const GroupsPage();
}

class GroupRouteData extends GoRouteData {
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

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  static const path = 'profile';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

class LicenseRouteData extends GoRouteData {
  const LicenseRouteData();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MyLincensePage();
}

class AccountRouteData extends GoRouteData {
  const AccountRouteData();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountPage();
}
