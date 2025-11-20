import 'package:fcm_config/fcm_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/notification.dart';

/// アプリ起動中の
/// 本来はInfra層ではあるが、利便性のため、該当Widgetのみ許容
class ForegroundNotificationClickListner extends SingleChildStatelessWidget {
  const ForegroundNotificationClickListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        return FCMNotificationClickListener(
          child: child ?? const SizedBox.shrink(),
          onNotificationClick: (notification, _) {
            final message = toDomainModel(notification);
            onNotificationClick(ref, message);
          },
        );
      },
    );
  }

  NotificationMessage toDomainModel(RemoteMessage message) =>
      NotificationMessage(
        senderId: message.senderId == null
            ? null
            : NotificationMessageSenderId(message.senderId!),
        category: message.category,
        data: message.data,
        from: message.from,
        messageId: message.messageId == null
            ? null
            : NotificationMessageId(message.messageId!),
        messageType: message.messageType,
      );

  Future<void> onNotificationClick(
    WidgetRef ref,
    NotificationMessage? message,
  ) async {
    final path = message?.data['path'];
    logger.d('Foreground Click');
    if (path == null) {
      return;
    }

    // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
    ref.read(routerProvider).go(path as String);
  }
}
