// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$baseShellSrouteData];

RouteBase get $baseShellSrouteData => ShellRouteData.$route(
  navigatorKey: BaseShellSrouteData.$navigatorKey,
  factory: $BaseShellSrouteDataExtension._fromState,
  routes: [
    GoRouteData.$route(path: '/', factory: $RootRouteData._fromState),
    GoRouteData.$route(
      path: '/start',
      factory: $OnboardStartRouteData._fromState,
      routes: [
        GoRouteData.$route(
          path: 'account_link',
          factory: $AccountLinkRouteData._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/share_link/:shareLinkId',
      factory: $ShareLinkRouteData._fromState,
    ),
    GoRouteData.$route(
      path: '/preview',
      factory: $PhotoPreviewRouteData._fromState,
    ),
    GoRouteData.$route(
      path: '/onboard_form',
      factory: $OnboardFormRouteData._fromState,
    ),
    StatefulShellRouteData.$route(
      restorationScopeId: BottomNavitorShellRouteData.$restorationScopeId,
      factory: $BottomNavitorShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/items',
              factory: $ItemsRouteData._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'item/:itemId',
                  factory: $ItemRouteData._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'edit',
                      factory: $ItemEditRouteData._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'purchase',
                      factory: $PurchaseRouteData._fromState,
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'edit',
                  factory: $ItemCreateRouteData._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/analyze',
              factory: $AnalyzeRouteData._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'analyze_detail',
                  factory: $AnalyzeDetailRouteData._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteData._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'groups',
                  factory: $GroupsRouteData._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'group/:groupId',
                      factory: $GroupRouteData._fromState,
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'profile',
                  factory: $ProfileRouteData._fromState,
                ),
                GoRouteData.$route(
                  path: 'account',
                  factory: $AccountRouteData._fromState,
                ),
                GoRouteData.$route(
                  path: 'license',
                  factory: $LicenseRouteData._fromState,
                ),
                GoRouteData.$route(
                  path: 'ui_style',
                  factory: $SettingsUiStylePageRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'color_style',
                  factory: $SettingsThemeColorPageRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'theme_mode',
                  factory: $SettingsThemeModePageRoute._fromState,
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

mixin $RootRouteData on GoRouteData {
  static RootRouteData _fromState(GoRouterState state) => const RootRouteData();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $OnboardStartRouteData on GoRouteData {
  static OnboardStartRouteData _fromState(GoRouterState state) =>
      const OnboardStartRouteData();

  @override
  String get location => GoRouteData.$location('/start');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AccountLinkRouteData on GoRouteData {
  static AccountLinkRouteData _fromState(GoRouterState state) =>
      const AccountLinkRouteData();

  @override
  String get location => GoRouteData.$location('/start/account_link');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ShareLinkRouteData on GoRouteData {
  static ShareLinkRouteData _fromState(GoRouterState state) =>
      ShareLinkRouteData(state.pathParameters['shareLinkId']!);

  ShareLinkRouteData get _self => this as ShareLinkRouteData;

  @override
  String get location => GoRouteData.$location(
    '/share_link/${Uri.encodeComponent(_self.shareLinkId)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PhotoPreviewRouteData on GoRouteData {
  static PhotoPreviewRouteData _fromState(GoRouterState state) =>
      PhotoPreviewRouteData(
        index: _$convertMapValue(
          'index',
          state.uri.queryParameters,
          int.tryParse,
        ),
        $extra: state.extra as List<String>?,
      );

  PhotoPreviewRouteData get _self => this as PhotoPreviewRouteData;

  @override
  String get location => GoRouteData.$location(
    '/preview',
    queryParams: {if (_self.index != null) 'index': _self.index!.toString()},
  );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $OnboardFormRouteData on GoRouteData {
  static OnboardFormRouteData _fromState(GoRouterState state) =>
      const OnboardFormRouteData();

  @override
  String get location => GoRouteData.$location('/onboard_form');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

extension $BottomNavitorShellRouteDataExtension on BottomNavitorShellRouteData {
  static BottomNavitorShellRouteData _fromState(GoRouterState state) =>
      const BottomNavitorShellRouteData();
}

mixin $ItemsRouteData on GoRouteData {
  static ItemsRouteData _fromState(GoRouterState state) =>
      const ItemsRouteData();

  @override
  String get location => GoRouteData.$location('/items');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ItemRouteData on GoRouteData {
  static ItemRouteData _fromState(GoRouterState state) =>
      ItemRouteData(state.pathParameters['itemId']!);

  ItemRouteData get _self => this as ItemRouteData;

  @override
  String get location =>
      GoRouteData.$location('/items/item/${Uri.encodeComponent(_self.itemId)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ItemEditRouteData on GoRouteData {
  static ItemEditRouteData _fromState(GoRouterState state) =>
      ItemEditRouteData(state.pathParameters['itemId']!);

  ItemEditRouteData get _self => this as ItemEditRouteData;

  @override
  String get location => GoRouteData.$location(
    '/items/item/${Uri.encodeComponent(_self.itemId)}/edit',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PurchaseRouteData on GoRouteData {
  static PurchaseRouteData _fromState(GoRouterState state) =>
      PurchaseRouteData(state.pathParameters['itemId']!);

  PurchaseRouteData get _self => this as PurchaseRouteData;

  @override
  String get location => GoRouteData.$location(
    '/items/item/${Uri.encodeComponent(_self.itemId)}/purchase',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ItemCreateRouteData on GoRouteData {
  static ItemCreateRouteData _fromState(GoRouterState state) =>
      const ItemCreateRouteData();

  @override
  String get location => GoRouteData.$location('/items/edit');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AnalyzeRouteData on GoRouteData {
  static AnalyzeRouteData _fromState(GoRouterState state) =>
      const AnalyzeRouteData();

  @override
  String get location => GoRouteData.$location('/analyze');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AnalyzeDetailRouteData on GoRouteData {
  static AnalyzeDetailRouteData _fromState(GoRouterState state) =>
      AnalyzeDetailRouteData(
        index: _$convertMapValue(
          'index',
          state.uri.queryParameters,
          int.tryParse,
        ),
      );

  AnalyzeDetailRouteData get _self => this as AnalyzeDetailRouteData;

  @override
  String get location => GoRouteData.$location(
    '/analyze/analyze_detail',
    queryParams: {if (_self.index != null) 'index': _self.index!.toString()},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsRouteData on GoRouteData {
  static SettingsRouteData _fromState(GoRouterState state) =>
      const SettingsRouteData();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $GroupsRouteData on GoRouteData {
  static GroupsRouteData _fromState(GoRouterState state) =>
      const GroupsRouteData();

  @override
  String get location => GoRouteData.$location('/settings/groups');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $GroupRouteData on GoRouteData {
  static GroupRouteData _fromState(GoRouterState state) =>
      GroupRouteData(state.pathParameters['groupId']!);

  GroupRouteData get _self => this as GroupRouteData;

  @override
  String get location => GoRouteData.$location(
    '/settings/groups/group/${Uri.encodeComponent(_self.groupId)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ProfileRouteData on GoRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  @override
  String get location => GoRouteData.$location('/settings/profile');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AccountRouteData on GoRouteData {
  static AccountRouteData _fromState(GoRouterState state) =>
      const AccountRouteData();

  @override
  String get location => GoRouteData.$location('/settings/account');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LicenseRouteData on GoRouteData {
  static LicenseRouteData _fromState(GoRouterState state) =>
      const LicenseRouteData();

  @override
  String get location => GoRouteData.$location('/settings/license');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsUiStylePageRoute on GoRouteData {
  static SettingsUiStylePageRoute _fromState(GoRouterState state) =>
      const SettingsUiStylePageRoute();

  @override
  String get location => GoRouteData.$location('/settings/ui_style');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsThemeColorPageRoute on GoRouteData {
  static SettingsThemeColorPageRoute _fromState(GoRouterState state) =>
      const SettingsThemeColorPageRoute();

  @override
  String get location => GoRouteData.$location('/settings/color_style');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsThemeModePageRoute on GoRouteData {
  static SettingsThemeModePageRoute _fromState(GoRouterState state) =>
      const SettingsThemeModePageRoute();

  @override
  String get location => GoRouteData.$location('/settings/theme_mode');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
