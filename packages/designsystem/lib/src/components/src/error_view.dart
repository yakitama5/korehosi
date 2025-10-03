import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:packages_domain/common.dart';

class ErrorView extends HookWidget {
  const ErrorView(this.error, this.stackTrace, {super.key});

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO(yakitama5): エラー画像を設定する
          const Text('Sorry'),
          const Gap(8),
          Text(
            error.errorMessage,
            // HACK(yakitama5): `ThemeExtension`
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class SliverErrorView extends ErrorView {
  const SliverErrorView(super.error, super.stackTrace, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(child: super.build(context));
  }
}

extension _ExceptionX on Object {
  String get errorMessage {
    if (this is AppException) {
      return (this as AppException).message!;
    }

    return toString();
  }
}
