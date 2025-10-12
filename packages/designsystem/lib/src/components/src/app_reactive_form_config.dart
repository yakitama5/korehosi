import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppReactiveFormConfig extends SingleChildStatelessWidget {
  const AppReactiveFormConfig({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ReactiveFormConfig(
      validationMessages: {
        /// エラーメッセージの共通定義
        ValidationMessage.required: (error) =>
            i18n.app.validErrorMessageRequired,
        CustomValidationMessage.url: (error) =>
            i18n.app.validErrorMessageUrlPattern,
      },
      child: child ?? const SizedBox.shrink(),
    );
  }
}
