import 'package:fcm_config/fcm_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:nested/nested.dart';
import 'package:packages_domain/notification.dart';

/// アプリ起動中のPUSH通知押下Listener
/// 本来はInfra層ではあるが、利便性のため、該当Widgetのみ許容
class FCMForegroundNotificationClickListener
    extends SingleChildStatelessWidget {
  const FCMForegroundNotificationClickListener({
    super.key,
    super.child,
    this.onNotificationClick,
  });

  final ValueChanged<NotificationMessage>? onNotificationClick;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        return FCMNotificationClickListener(
          child: child ?? const SizedBox.shrink(),
          onNotificationClick: (notification, _) {
            final message = notification.toDomainModel();
            if (onNotificationClick != null) {
              return onNotificationClick!(message);
            }
          },
        );
      },
    );
  }
}
