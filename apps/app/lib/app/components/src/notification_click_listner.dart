import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';

/// PUSH通知を押下した時のリスナー
class NotificationClickListner extends SingleChildStatelessWidget {
  const NotificationClickListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        ref.listen(notificationMessageProvider, (previous, next) async {
          final message = next.value;
          final path = message?.data['path'];
          if (path == null) {
            return;
          }

          // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
          ref.read(routerProvider).go(path as String);
        });

        return child ?? const SizedBox.shrink();
      },
    );
  }
}
