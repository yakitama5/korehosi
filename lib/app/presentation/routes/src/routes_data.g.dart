// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $baseShellSrouteData,
    ];

RouteBase get $baseShellSrouteData => ShellRouteData.$route(
      navigatorKey: BaseShellSrouteData.$navigatorKey,
      factory: $BaseShellSrouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $RootRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/start',
          factory: $OnboardStartRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'account_link',
              factory: $AccountLinkRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/share_link/:shareLinkId',
          factory: $ShareLinkRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/preview',
          factory: $PhotoPreviewRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/onboard_form',
          factory: $OnboardFormRouteDataExtension._fromState,
        ),
        StatefulShellRouteData.$route(
          restorationScopeId: BottomNavitorShellRouteData.$restorationScopeId,
          navigatorContainerBuilder:
              BottomNavitorShellRouteData.$navigatorContainerBuilder,
          factory: $BottomNavitorShellRouteDataExtension._fromState,
          branches: [
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/items',
                  factory: $ItemsRouteDataExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'item/:itemId',
                      factory: $ItemRouteDataExtension._fromState,
                      routes: [
                        GoRouteData.$route(
                          path: 'edit',
                          factory: $ItemEditRouteDataExtension._fromState,
                        ),
                        GoRouteData.$route(
                          path: 'purchase',
                          factory: $PurchaseRouteDataExtension._fromState,
                        ),
                      ],
                    ),
                    GoRouteData.$route(
                      path: 'edit',
                      factory: $ItemCreateRouteDataExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/analyze',
                  factory: $AnalyzeRouteDataExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/settings',
                  factory: $SettingsRouteDataExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'groups',
                      factory: $GroupsRouteDataExtension._fromState,
                      routes: [
                        GoRouteData.$route(
                          path: 'group/:groupId',
                          factory: $GroupRouteDataExtension._fromState,
                        ),
                      ],
                    ),
                    GoRouteData.$route(
                      path: 'profile',
                      factory: $ProfileRouteDataExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'account',
                      factory: $AccountRouteDataExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'license',
                      factory: $LicenseRouteDataExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $BaseShellSrouteDataExtension on BaseShellSrouteData {
  static BaseShellSrouteData _fromState(GoRouterState state) =>
      BaseShellSrouteData();
}

extension $RootRouteDataExtension on RootRouteData {
  static RootRouteData _fromState(GoRouterState state) => const RootRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OnboardStartRouteDataExtension on OnboardStartRouteData {
  static OnboardStartRouteData _fromState(GoRouterState state) =>
      const OnboardStartRouteData();

  String get location => GoRouteData.$location(
        '/start',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountLinkRouteDataExtension on AccountLinkRouteData {
  static AccountLinkRouteData _fromState(GoRouterState state) =>
      const AccountLinkRouteData();

  String get location => GoRouteData.$location(
        '/start/account_link',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShareLinkRouteDataExtension on ShareLinkRouteData {
  static ShareLinkRouteData _fromState(GoRouterState state) =>
      ShareLinkRouteData(
        state.pathParameters['shareLinkId']!,
      );

  String get location => GoRouteData.$location(
        '/share_link/${Uri.encodeComponent(shareLinkId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PhotoPreviewRouteDataExtension on PhotoPreviewRouteData {
  static PhotoPreviewRouteData _fromState(GoRouterState state) =>
      PhotoPreviewRouteData(
        index: _$convertMapValue('index', state.uri.queryParameters, int.parse),
        $extra: state.extra as List<String>?,
      );

  String get location => GoRouteData.$location(
        '/preview',
        queryParams: {
          if (index != null) 'index': index!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $OnboardFormRouteDataExtension on OnboardFormRouteData {
  static OnboardFormRouteData _fromState(GoRouterState state) =>
      const OnboardFormRouteData();

  String get location => GoRouteData.$location(
        '/onboard_form',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BottomNavitorShellRouteDataExtension on BottomNavitorShellRouteData {
  static BottomNavitorShellRouteData _fromState(GoRouterState state) =>
      const BottomNavitorShellRouteData();
}

extension $ItemsRouteDataExtension on ItemsRouteData {
  static ItemsRouteData _fromState(GoRouterState state) =>
      const ItemsRouteData();

  String get location => GoRouteData.$location(
        '/items',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ItemRouteDataExtension on ItemRouteData {
  static ItemRouteData _fromState(GoRouterState state) => ItemRouteData(
        state.pathParameters['itemId']!,
      );

  String get location => GoRouteData.$location(
        '/items/item/${Uri.encodeComponent(itemId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ItemEditRouteDataExtension on ItemEditRouteData {
  static ItemEditRouteData _fromState(GoRouterState state) => ItemEditRouteData(
        state.pathParameters['itemId']!,
      );

  String get location => GoRouteData.$location(
        '/items/item/${Uri.encodeComponent(itemId)}/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PurchaseRouteDataExtension on PurchaseRouteData {
  static PurchaseRouteData _fromState(GoRouterState state) => PurchaseRouteData(
        state.pathParameters['itemId']!,
      );

  String get location => GoRouteData.$location(
        '/items/item/${Uri.encodeComponent(itemId)}/purchase',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ItemCreateRouteDataExtension on ItemCreateRouteData {
  static ItemCreateRouteData _fromState(GoRouterState state) =>
      const ItemCreateRouteData();

  String get location => GoRouteData.$location(
        '/items/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnalyzeRouteDataExtension on AnalyzeRouteData {
  static AnalyzeRouteData _fromState(GoRouterState state) =>
      const AnalyzeRouteData();

  String get location => GoRouteData.$location(
        '/analyze',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteDataExtension on SettingsRouteData {
  static SettingsRouteData _fromState(GoRouterState state) =>
      const SettingsRouteData();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GroupsRouteDataExtension on GroupsRouteData {
  static GroupsRouteData _fromState(GoRouterState state) =>
      const GroupsRouteData();

  String get location => GoRouteData.$location(
        '/settings/groups',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GroupRouteDataExtension on GroupRouteData {
  static GroupRouteData _fromState(GoRouterState state) => GroupRouteData(
        state.pathParameters['groupId']!,
      );

  String get location => GoRouteData.$location(
        '/settings/groups/group/${Uri.encodeComponent(groupId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteDataExtension on ProfileRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  String get location => GoRouteData.$location(
        '/settings/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteDataExtension on AccountRouteData {
  static AccountRouteData _fromState(GoRouterState state) =>
      const AccountRouteData();

  String get location => GoRouteData.$location(
        '/settings/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicenseRouteDataExtension on LicenseRouteData {
  static LicenseRouteData _fromState(GoRouterState state) =>
      const LicenseRouteData();

  String get location => GoRouteData.$location(
        '/settings/license',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
