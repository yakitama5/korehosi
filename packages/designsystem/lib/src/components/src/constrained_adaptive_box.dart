import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class ConstrainedMobileBox extends SingleChildStatelessWidget {
  const ConstrainedMobileBox({super.key, required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: child,
    );
  }
}

class ConstrainedTabletBox extends SingleChildStatelessWidget {
  const ConstrainedTabletBox({super.key, required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 900),
      child: child,
    );
  }
}

class ConstrainedDesktopBox extends SingleChildStatelessWidget {
  const ConstrainedDesktopBox({super.key, required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1920),
      child: child,
    );
  }
}
