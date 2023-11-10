import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';
import 'components/error_view.dart';

class ErrorPage extends HookConsumerWidget {
  const ErrorPage({super.key, this.exception});

  final Exception? exception;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ErrorView(
            exception ?? l10n.unexpectedErrorMessage,
            null,
          ),
        ),
      ),
    );
  }
}
