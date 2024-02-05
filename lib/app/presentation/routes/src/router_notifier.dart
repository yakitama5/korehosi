import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/state/initial_deep_link_provider.dart';
import '../../../application/state/initial_notification_provider.dart';
import '../../../application/usecase/item/state/current_group_item_provider.dart';
import '../../../application/usecase/user/state/auth_status_provider.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../utils/logger.dart';
import 'item_branch.dart';
import 'routes_data.dart';
import 'settings_branch.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  List<RouteBase> get routes => $appRoutes;

  @override
  Future<void> build() async {
    ref.listenSelf((previous, next) {
      if (state.isLoading) {
        return;
      }

      routerListener?.call();
    });
  }

  Future<String?> redirect(
    BuildContext context,
    GoRouterState routeState,
  ) async {
    if (state.isLoading || state.hasError) {
      return null;
    }
    final location = routeState.fullPath ?? '';
    final isSplash = location == const RootRouteData().location;
    final isNotAuthLocations =
        location.startsWith(const AccountLinkRouteData().location) ||
            location.startsWith(const OnboardFormRouteData().location) ||
            location.startsWith(const OnboardStartRouteData().location);

    // 認証判定
    final authUser = await ref.watch(authStatusProvider.future);
    if (authUser == null && (isSplash || !isNotAuthLocations)) {
      // オンボーディングへ
      return const OnboardStartRouteData().location;
    }

    // ユーザー登録判定
    if (authUser != null) {
      final user = await ref.watch(authUserProvider.future);
      if (user == null &&
          !location.startsWith(const AccountRouteData().location)) {
        return const OnboardFormRouteData().location;
      } else if (isSplash || isNotAuthLocations) {
        return const ItemsRouteData().location;
      }
    }

    // WebはDynamicLinksが未対応のため除外する
    if (!kIsWeb) {
      // DynamicLinks判定 (起動時)
      final initialLink = await ref.watch(initialDeepLinkProvider.future);
      if (initialLink != null) {
        // 指定された画面へ
        logger.d('''
DynamicLink
  - Link:    $initialLink
  - Path:    ${initialLink.path}''');
        return initialLink.path;
      }
    }

    // プッシュ通知からのアプリ表示を判定
    final initialMessage =
        await ref.read(initialNotificationMessageProvider.future);
    if (initialMessage != null && initialMessage.data['path'] != null) {
      return initialMessage.data['path'] as String;
    }

    // ほしいもの画面場合、パス指定されている項目IDが現在のグループ情報に存在するかを判定
    if (routeState.pathParameters.containsKey('itemId')) {
      final itemId = routeState.pathParameters['itemId']!;
      final exists = await ref.watch(
        currentGroupItemProvider(itemId: itemId)
            .selectAsync((data) => data != null),
      );

      // 存在しなければ一覧にリダイレクト
      if (!exists) {
        logger.d('Redirect Items (Not exists item)');
        return const ItemsRouteData().location;
      }
    }

    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
