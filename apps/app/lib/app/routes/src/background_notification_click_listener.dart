import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/notification_navigation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/notification.dart';

/// PUSH通知を押下した時のリスナー
class BackgroundNotificationClickListener extends SingleChildStatelessWidget {
  const BackgroundNotificationClickListener({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        ref
          ..listen(
            notificationMessageProvider,
            (_, next) => onNotificationClick(ref, next.value),
          )
          ..listen(
            initialNotificationMessageProvider,
            (_, next) => onNotificationClick(ref, next.value),
          );

        return child ?? const SizedBox.shrink();
      },
    );
  }

  Future<void> onNotificationClick(
    WidgetRef ref,
    NotificationMessage? message,
  ) async {
    logger.d('Background Click');
    if (message == null) {
      return;
    }

    await navigateFromNotification(ref, message);
  }
}
