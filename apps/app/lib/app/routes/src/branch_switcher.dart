import 'package:flutter/material.dart';

class BranchSwitcher extends StatelessWidget {
  const BranchSwitcher({
    super.key,
    required this.currentIndex,
    required this.children,
  });

  final int currentIndex;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // `NoTransitionPage`と同様とするため、ただ表示を切り替えるのみ
    return children[currentIndex];
  }
}
