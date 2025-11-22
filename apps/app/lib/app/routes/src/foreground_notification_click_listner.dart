import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/providers/go_router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_core/util.dart';
import 'package:packages_infra_ui/firebase/fcm_foreground_notification_click_listner.dart';

/// アプリ起動中のPUSH通知の押下処理
class ForegroundNotificationClickListner extends SingleChildStatelessWidget {
  const ForegroundNotificationClickListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        return FCMForegroundNotificationClickListner(
          child: child ?? const SizedBox.shrink(),
          onNotificationClick: (message) {
            logger.d('Foreground Click');

            final path = message.path;

            if (path == null) {
              return;
            }

            // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
            ref.read(goRouterProvider).go(path);
          },
        );
      },
    );
  }
}
