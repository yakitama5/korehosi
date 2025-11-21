import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// スクロールに応じたアニメーション表示を行うFAB
class AnimatedSwitcherFab extends HookWidget {
  const AnimatedSwitcherFab({
    super.key,
    required this.controller,
    this.duration = const Duration(milliseconds: 100),
    this.onPressed,
    this.icon,
    required this.expandWidth,
    this.label = const SizedBox.shrink(),
  });

  final ScrollController controller;
  final Duration duration;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Widget label;
  final double expandWidth;

  @override
  Widget build(BuildContext context) {
    final expanded = useState(false);

    // スクロール状況を監視
    controller.addListener(
      () {
        if (controller.offset > kToolbarHeight) {
          expanded.value = false;
        } else {
          expanded.value = true;
        }
      },
    );

    // HACK(yakitama5): Flutter公式でサポートされたらそちらに変更すること
    // https://github.com/flutter/flutter/issues/104393
    return expanded.value
        ? AnimatedContainer(
            duration: duration,
            width: expandWidth,
            child: FloatingActionButton.extended(
              key: const ValueKey('extFavKey'),
              onPressed: onPressed,
              icon: icon,
              label: label,
            ),
          )
        : AnimatedContainer(
            duration: duration,
            width: 56,
            child: FloatingActionButton(
              key: const ValueKey('favKey'),
              onPressed: onPressed,
              child: icon,
            ),
          );
  }
}
