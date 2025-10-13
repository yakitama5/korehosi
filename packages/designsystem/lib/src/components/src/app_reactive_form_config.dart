import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppReactiveFormConfig extends SingleChildStatelessWidget {
  const AppReactiveFormConfig({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ReactiveFormConfig(
      validationMessages: {
        /// エラーメッセージの共通定義
        ValidationMessage.required: (error) =>
            commonI18n.designsystem.validationError.required,
        CustomValidationMessage.url: (error) =>
            commonI18n.designsystem.validationError.url,
      },
      child: child ?? const SizedBox.shrink(),
    );
  }
}
