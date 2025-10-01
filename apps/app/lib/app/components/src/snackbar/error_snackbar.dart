import 'package:flutter/material.dart';

/// 処理失敗(エラー)用のスナックバー
class ErrorSnackBar extends SnackBar {
  ErrorSnackBar._({required String message, required BuildContext context})
      : super(
          content: Text(
            message,
            style: TextStyle(color: Theme.of(context).colorScheme.onError),
          ),
          backgroundColor: Theme.of(context).colorScheme.error,
          closeIconColor: Theme.of(context).colorScheme.onError,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

  static void show(
    ScaffoldMessengerState scaffoldMessenger, {
    required String message,
  }) {
    scaffoldMessenger.showSnackBar(
      ErrorSnackBar._(
        message: message,
        context: scaffoldMessenger.context,
      ),
    );
  }
}
