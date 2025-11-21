import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:go_router/go_router.dart';
import 'package:packages_application/common.dart';
import 'package:packages_application/item.dart';
import 'package:packages_application/user.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  List<RouteBase> get routes => $appRoutes;

  @override
  Future<void> build() async {
    listenSelf((previous, next) {
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

    // プッシュ通知からのアプリ表示を判定
    final initialMessage = await ref.read(
      initialNotificationMessageProvider.future,
    );
    if (initialMessage != null && initialMessage.path != null) {
      return initialMessage.path;
    }

    // ほしいもの画面場合、パス指定されている項目IDが現在のグループ情報に存在するかを判定
    if (routeState.pathParameters.containsKey('itemId')) {
      final itemId = routeState.pathParameters['itemId']!;
      final exists = await ref.watch(
        itemProvider(
          itemId: ItemId(itemId),
        ).selectAsync((data) => data != null),
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
