import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_cupertino_text_field/reactive_cupertino_text_field.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/validator/validation_messages.dart';
import '../../hooks/importer.dart';

class ReactiveCupertinoDialogTextField<T> extends HookWidget {
  const ReactiveCupertinoDialogTextField({
    super.key,
    this.labelText,
    this.hintText,
    required this.formControlName,
    this.isRequired = false,
    this.validationMessages,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.counterText,
    this.textInputType,
    this.prefixText,
    this.inputFormatters,
    this.autofocus = false,
  });
  final String? labelText;
  final String? hintText;
  final String formControlName;
  final bool isRequired;
  final Map<String, ValidationMessageFunction>? validationMessages;
  final int? minLines;
  final int maxLines;
  final int? maxLength;
  final String? counterText;
  final String? prefixText;
  final TextInputType? textInputType;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final colorScheme = useColorScheme();

    return ReactiveValueListenableBuilder(
      formControlName: formControlName,
      builder: (context, control, child) {
        return ReactiveCupertinoTextField<T>(
          formControlName: formControlName,
          autofocus: autofocus,
          validationMessages: {
            ...?validationMessages,

            /// 多言語化対応した共通エラーメッセージの設定方法がわからないので、
            /// こちらで共通的なものを設定しておく
            ValidationMessage.required: (error) =>
                i18n.app.validErrorMessageRequired,
            CustomValidationMessage.url: (error) =>
                i18n.app.validErrorMessageUrlPattern,
          },
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          keyboardType: textInputType,
          inputFormatters: inputFormatters,
          style: TextStyle(color: colorScheme.onSurface),
        );
      },
    );
  }
}
