import 'package:cores_domain/exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../hooks/src/use_theme.dart';

class ErrorView extends HookWidget {
  const ErrorView(this.error, this.stackTrace, {super.key});

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final textTheme = useTextTheme();
    final colorScheme = useColorScheme();

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

extension ExceptionObjectX on Object {
  String get errorMessage {
    if (this is RequiredRecordExistsException) {
      return (this as RequiredRecordExistsException).errorMessage;
    } else if (this is DeletePermissionException) {
      return (this as DeletePermissionException).errorMessage;
    } else if (this is AccountLinkException) {
      return (this as AccountLinkException).errorMessage;
    } else if (this is BusinessException) {
      return (this as BusinessException).errorMessage;
    }

    return toString();
  }
}
