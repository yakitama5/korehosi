import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'router.dart';

part 'router_observer.g.dart';

@riverpod
class CurrentRoute extends _$CurrentRoute {
  @override
  Uri build() {
    final router = ref.watch(routerProvider);
    void listener() {
      final uri = router.routeInformationProvider.value.uri;
      state = uri;
      logger.i(uri);

      // FirebaseAnalyticsに反映
      ref.read(analyticsServiceProvider).screenView(screenName: uri.path);
    }

    router.routerDelegate.addListener(listener);
    ref.onDispose(() {
      router.routerDelegate.removeListener(listener);
    });

    final uri = router.routeInformationProvider.value.uri;
    logger.i(uri);

    // FirebaseAnalyticsに反映
    ref.read(analyticsServiceProvider).screenView(screenName: uri.path);
    return uri;
  }
}

class RouteObserverContainer extends SingleChildStatelessWidget {
  const RouteObserverContainer({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (context, ref, child) {
        // HACK(yakitama5): リビルド抑制のため、ref.watchからListnerに変更する
        // riverpodを使わない方法に変更する方法をちょうさ
        // 現在のパスを検知し続ける
        ref.watch(currentRouteProvider);

        // ダミー要素を描画する
        return const SizedBox.shrink();
      },
    );
  }
}
