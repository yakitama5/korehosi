import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _expandedProvider = StateProvider<bool>((ref) => true);

class AnimatedSwitcherFab extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    // スクロール状況を監視
    controller.addListener(
      () {
        final expanded = ref.read(_expandedProvider.notifier);
        if (controller.offset > kToolbarHeight) {
          expanded.update((state) => false);
        } else {
          expanded.update((state) => true);
        }
      },
    );

    final expanded = ref.watch(_expandedProvider);

    // HACK(yakitama5): Flutter公式でサポートされたらそちらに変更すること
    // https://github.com/flutter/flutter/issues/104393
    return expanded
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
