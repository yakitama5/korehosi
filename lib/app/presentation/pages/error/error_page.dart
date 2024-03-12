import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../hooks/use_l10n.dart';
import 'components/error_view.dart';

class ErrorPage extends HookWidget {
  const ErrorPage({super.key, this.exception});

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

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
