import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/notification_navigation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_core/util.dart';
import 'package:packages_infra_ui/firebase/fcm_foreground_notification_click_listener.dart';

/// アプリ起動中のPUSH通知の押下処理
class ForegroundNotificationClickListener extends SingleChildStatelessWidget {
  const ForegroundNotificationClickListener({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        return FCMForegroundNotificationClickListener(
          child: child ?? const SizedBox.shrink(),
          onNotificationClick: (message) {
            logger.d('Foreground Click');

            unawaited(navigateFromNotification(ref, message));
          },
        );
      },
    );
  }
}
