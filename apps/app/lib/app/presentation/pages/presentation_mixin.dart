import 'package:family_wish_list/app/presentation/pages/error/components/error_view.dart';
import 'package:flutter/material.dart';

import '../components/importer.dart';

/// プレゼンテーション層用のエラーハンドリングをラップした共通処理 Mixin
mixin PresentationMixin {
  Future<void> execute(
    BuildContext context, {
    required Future<void> Function() action,
    String? successMessage,
  }) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await action();
      if (successMessage != null) {
        InfoSnackBar.show(scaffoldMessenger, message: successMessage);
      }
    } on Exception catch (e) {
      ErrorSnackBar.show(scaffoldMessenger, message: e.errorMessage);
    }
  }
}
