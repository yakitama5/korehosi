import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nested/nested.dart';

import '../../../hooks/importer.dart';

/// アダプティブダイアログで利用するアクション
/// プラットフォームに応じたアダプティブレイアウトを提供
class AdaptiveAction extends SingleChildStatelessWidget {
  const AdaptiveAction({
    super.key,
    required super.child,
    required this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => HookBuilder(
        builder: (context) => switch (useTheme().platform) {
          TargetPlatform.android ||
          TargetPlatform.fuchsia ||
          TargetPlatform.linux ||
          TargetPlatform.windows =>
            TextButton(
              onPressed: onPressed,
              child: child ?? const SizedBox.shrink(),
            ),
          TargetPlatform.iOS || TargetPlatform.macOS => CupertinoDialogAction(
              onPressed: onPressed,
              child: child ?? const SizedBox.shrink(),
            ),
        },
      );
}
