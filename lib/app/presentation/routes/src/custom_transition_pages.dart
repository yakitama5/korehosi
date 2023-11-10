import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
/// スライド表示 (単純な次画面遷移で利用)
///
class AndroidSlideTransitionPage extends CustomTransitionPage<void> {
  AndroidSlideTransitionPage({
    super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: animation.drive(
                  Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).chain(
                    CurveTween(curve: Curves.easeIn),
                  ),
                ),
                child: child,
              ),
            );
          },
        );
}

// ignore: avoid_classes_with_only_static_members
class PageTransition {
  /// 全画面表示ダイアログ
  static Page<void> fullScreenDialogTransition({
    required BuildContext context,
    required Widget child,
  }) {
    final platform = Theme.of(context).platform;
    return switch (platform) {
      TargetPlatform.iOS ||
      TargetPlatform.macOS =>
        CupertinoPage(child: child, fullscreenDialog: true),
      _ => MaterialPage(child: child, fullscreenDialog: true),
    };
  }

  /// 通常の遷移
  static Page<void> slideTransition({
    required BuildContext context,
    required Widget child,
  }) {
    final platform = Theme.of(context).platform;
    return switch (platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => CupertinoPage(child: child),
      _ => AndroidSlideTransitionPage(child: child),
    };
  }
}
