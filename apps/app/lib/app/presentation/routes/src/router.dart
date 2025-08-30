import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/state/initial_location_provider.dart';
import '../../pages/error/error_page.dart';
import 'router_notifier.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final router = ref.watch(routerNotifierProvider.notifier);
  final initialLocation = ref.watch(initialLocationProvider);

  return GoRouter(
    routes: router.routes,
    initialLocation: initialLocation,
    redirect: router.redirect,

    // ログイン状態やデータの変更でredirectを検知するように、`refreshListenable`を設定
    refreshListenable: router,
    // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら復活する
    /// https://github.com/flutter/flutter/issues/112196
    // observers: [AppRouterObserver()],
    errorBuilder: (_, state) => ErrorPage(exception: state.error),
  );
}
