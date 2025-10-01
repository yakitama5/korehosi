import 'package:flutter/material.dart';

/// 情報表示スナックバー
class InfoSnackBar extends SnackBar {
  InfoSnackBar._({required String message})
      : super(
          content: Text(message),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

  static void show(
    ScaffoldMessengerState scaffoldMessenger, {
    required String message,
  }) {
    scaffoldMessenger.showSnackBar(InfoSnackBar._(message: message));
  }
}
