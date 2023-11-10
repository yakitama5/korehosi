import 'package:flutter/material.dart';

class NullSafetyBuilder<T> extends StatelessWidget {
  const NullSafetyBuilder({super.key, required this.builder, this.object});

  final T? object;
  final Widget Function(T obj) builder;

  @override
  Widget build(BuildContext context) {
    if (object == null) {
      return const SizedBox.shrink();
    }

    return builder(object as T);
  }
}
