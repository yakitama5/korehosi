import 'dart:async';

import 'package:packages_core/src/util/logger.dart';
import 'package:riverpod/riverpod.dart';

extension CacheForExtension on Ref {
  /// [duration] の間 providerを維持する。
  void cacheFor(Duration duration) {
    final link = keepAlive();
    Timer? timer;

    onCancel(() {
      logger.d('onCancel $runtimeType');
      timer = Timer(duration, link.close);
    });
    onResume(() {
      timer?.cancel();
    });

    onDispose(() {
      logger.d('onDispose $runtimeType');
      timer?.cancel();
    });
  }
}
