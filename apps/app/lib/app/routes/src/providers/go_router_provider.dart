import 'package:flutter_app/app/pages/error/error_page.dart';
import 'package:flutter_app/app/routes/src/providers/router_notifier_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:packages_application/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  final router = ref.watch(routerProvider.notifier);
  final initialLocation = ref.watch(initialLocationProvider);

  return GoRouter(
    routes: router.routes,
    initialLocation: initialLocation,
    redirect: router.redirect,
    errorBuilder: (_, state) => ErrorPage(exception: state.error),

    // ログイン状態やデータの変更でredirectを検知するように、`refreshListenable`を設定
    refreshListenable: router,
  );
}
