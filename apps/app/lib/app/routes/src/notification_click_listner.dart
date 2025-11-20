import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/keys.dart';
import 'package:packages_domain/notification.dart';

/// PUSH通知を押下した時のリスナー
class NotificationClickListner extends SingleChildStatelessWidget {
  const NotificationClickListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        ref..listen(
          notificationMessageProvider,
          (_, next) async => onNotificationClick(next.value),
        );

        return child ?? const SizedBox.shrink();
      },
    );
  }

  Future<void> onNotificationClick(NotificationMessage? message) async {
    final path = message?.data['path'];
    final rootContext = rootNavigatorKey.currentContext;
    if (path == null || rootContext == null) {
      return;
    }

    // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
    GoRouter.of(rootContext).go(path as String);
  }
}
