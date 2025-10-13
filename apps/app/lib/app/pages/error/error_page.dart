import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';

class ErrorPage extends HookWidget {
  const ErrorPage({super.key, this.exception});

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ErrorView(
            exception ?? commonI18n.exceptions.errorMessage.unexpected,
            null,
          ),
        ),
      ),
    );
  }
}
