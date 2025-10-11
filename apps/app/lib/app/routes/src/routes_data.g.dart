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
    GoRouteData.$route(path: '/', factory: _$RootRouteData._fromState),
    GoRouteData.$route(
      path: '/start',

      factory: _$OnboardStartRouteData._fromState,
      routes: [
        GoRouteData.$route(
          path: 'account_link',

          factory: _$AccountLinkRouteData._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/share_link/:shareLinkId',

      factory: _$ShareLinkRouteData._fromState,
    ),
    GoRouteData.$route(
      path: '/preview',

      factory: _$PhotoPreviewRouteData._fromState,
    ),
    GoRouteData.$route(
      path: '/onboard_form',

      factory: _$OnboardFormRouteData._fromState,
    ),
    StatefulShellRouteData.$route(
      restorationScopeId: BottomNavitorShellRouteData.$restorationScopeId,
      factory: $BottomNavitorShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/items',

              factory: _$ItemsRouteData._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'item/:itemId',

                  factory: _$ItemRouteData._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'edit',

                      factory: _$ItemEditRouteData._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'purchase',

                      factory: _$PurchaseRouteData._fromState,
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'edit',

                  factory: _$ItemCreateRouteData._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/analyze',

              factory: _$AnalyzeRouteData._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'analyze_detail',

                  factory: _$AnalyzeDetailRouteData._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/settings',

              factory: _$SettingsRouteData._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'groups',

                  factory: _$GroupsRouteData._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'group/:groupId',

                      factory: _$GroupRouteData._fromState,
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'profile',

                  factory: _$ProfileRouteData._fromState,
                ),
                GoRouteData.$route(
                  path: 'account',

                  factory: _$AccountRouteData._fromState,
                ),
                GoRouteData.$route(
                  path: 'license',

                  factory: _$LicenseRouteData._fromState,
                ),
                GoRouteData.$route(
                  path: 'ui_style',

                  factory: _$SettingsUiStylePageRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'color_style',

                  factory: _$SettingsThemeColorPageRoute._fromState,
                ),
                GoRouteData.$route(
                  path: 'theme_mode',

                  factory: _$SettingsThemeModePageRoute._fromState,
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

mixin _$RootRouteData on GoRouteData {
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

mixin _$OnboardStartRouteData on GoRouteData {
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

mixin _$AccountLinkRouteData on GoRouteData {
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

mixin _$ShareLinkRouteData on GoRouteData {
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

mixin _$PhotoPreviewRouteData on GoRouteData {
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

mixin _$OnboardFormRouteData on GoRouteData {
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

mixin _$ItemsRouteData on GoRouteData {
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

mixin _$ItemRouteData on GoRouteData {
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

mixin _$ItemEditRouteData on GoRouteData {
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

mixin _$PurchaseRouteData on GoRouteData {
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

mixin _$ItemCreateRouteData on GoRouteData {
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

mixin _$AnalyzeRouteData on GoRouteData {
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

mixin _$AnalyzeDetailRouteData on GoRouteData {
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

mixin _$SettingsRouteData on GoRouteData {
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

mixin _$GroupsRouteData on GoRouteData {
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

mixin _$GroupRouteData on GoRouteData {
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

mixin _$ProfileRouteData on GoRouteData {
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

mixin _$AccountRouteData on GoRouteData {
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

mixin _$LicenseRouteData on GoRouteData {
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

mixin _$SettingsUiStylePageRoute on GoRouteData {
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

mixin _$SettingsThemeColorPageRoute on GoRouteData {
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

mixin _$SettingsThemeModePageRoute on GoRouteData {
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
