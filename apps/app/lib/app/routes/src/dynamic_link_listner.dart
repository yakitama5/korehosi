import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';

/// DynamicLinkによる遷移を検知(起動中の押下を検知)
class DynamicLinkListner extends SingleChildStatelessWidget {
  const DynamicLinkListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        // DynamicLinksのイベント判定
        ref.listen(reactiveDeepLinkProvider, (previous, next) async {
          // Web版は対応していない
          // URLがなければスルー
          if (kIsWeb || !next.hasValue) {
            return;
          }

          final uri = next.value;
          if (uri == null || uri.path.isEmpty) {
            return;
          }

          // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
          ref.read(routerProvider).go(uri.path);
        });

        return child ?? const SizedBox.shrink();
      },
    );
  }
}
