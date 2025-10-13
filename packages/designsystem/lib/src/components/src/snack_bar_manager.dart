import 'package:flutter/material.dart';

enum _SnackBarType {
  info,
  error,
}

sealed class SnackBarManager {
  SnackBarManager._();

  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void showInfoSnackBar(String message) =>
      _showSnackBar(message, _SnackBarType.info);
  static void showErrorSnackBar(String message) =>
      _showSnackBar(message, _SnackBarType.error);

  static void hideSnackBar() {
    final state = rootScaffoldMessengerKey.currentState;
    if (state == null) {
      return;
    }
    state.hideCurrentSnackBar();
  }

  static void _showSnackBar(String message, _SnackBarType type) {
    final state = rootScaffoldMessengerKey.currentState;
    final context = rootScaffoldMessengerKey.currentContext;
    if (state == null || context == null) {
      return;
    }

    final cs = Theme.of(context).colorScheme;

    state
      ..hideCurrentSnackBar()
      ..showSnackBar(
        switch (type) {
          _SnackBarType.info => SnackBar(
              content: Text(message),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              showCloseIcon: true,
            ),
          _SnackBarType.error => SnackBar(
              content: Text(
                message,
                style: TextStyle(color: cs.onError),
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: cs.error,
              closeIconColor: cs.onError,
              showCloseIcon: true,
            ),
        },
      );
  }
}
