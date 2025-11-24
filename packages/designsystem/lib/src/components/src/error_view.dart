import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:packages_core/util.dart';
import 'package:packages_designsystem/src/extension/exception_extension.dart';
import 'package:packages_designsystem/src/gen/assets/assets.gen.dart';

class ErrorView extends HookWidget {
  const ErrorView(this.error, this.stackTrace, {super.key});

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          Lottie.asset(
            Assets.lottie.error,
            height: 120,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.color(const [
                  'Shape Layer 1',
                  '**',
                ], value: colorScheme.error),
              ],
            ),
          ),
          Text(
            error.errorMessage,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
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
