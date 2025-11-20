import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/notification.dart';

/// PUSH通知を押下した時のリスナー
class BackgroundNotificationClickListner extends SingleChildStatelessWidget {
  const BackgroundNotificationClickListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        ref
          ..listen(
            notificationMessageProvider,
            (_, next) async => onNotificationClick(ref, next.value),
          )
          ..listen(
            initialNotificationMessageProvider,
            (_, next) async => onNotificationClick(ref, next.value),
          );

        return child ?? const SizedBox.shrink();
      },
    );
  }

  Future<void> onNotificationClick(
    WidgetRef ref,
    NotificationMessage? message,
  ) async {
    final path = message?.data['path'];
    logger.d('Background Click');
    if (path == null) {
      return;
    }

    // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
    ref.read(routerProvider).go(path as String);
  }
}
