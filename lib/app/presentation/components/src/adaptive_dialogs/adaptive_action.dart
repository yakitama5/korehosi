import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class AdaptiveAction extends SingleChildStatelessWidget {
  const AdaptiveAction({
    super.key,
    required super.child,
    required this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    final theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(
          onPressed: onPressed,
          child: child ?? const SizedBox.shrink(),
        );
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(
          onPressed: onPressed,
          child: child ?? const SizedBox.shrink(),
        );
    }
  }
}
