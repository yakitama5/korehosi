import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/adaptive_dialogs/adaptive_action.dart';
import 'package:flutter_app/app/components/src/reactive_cupertino_text_field.dart';
import 'package:flutter_app/app/components/src/reactive_outlined_text_field.dart';
import 'package:flutter_app/app/hooks/src/use_theme.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_designsystem/extension.dart';
import 'package:reactive_forms/reactive_forms.dart';

const _textKey = 'name';

/// 「OK or Cancel」をアクションに持つ文字列入力用のダイアログ
class TextDialog extends HookWidget {
  const TextDialog({
    super.key,
    this.title,
    this.okLabel,
    this.cancelLabel,
    this.initial,
    this.labelText,
    this.maxLength,
    this.isRequired = false,
  });

  final String? title;
  final String? okLabel;
  final String? cancelLabel;
  final String? initial;
  final String? labelText;
  final int? maxLength;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => FormGroup({
        _textKey: FormControl<String>(
          value: initial,
          validators: [if (isRequired) Validators.required],
        ),
      }),
      builder: (context, formGroup, child) => AlertDialog.adaptive(
        title: Text(title ?? ''),
        content: _AdaptiveTextField(
          isRequired: isRequired,
          labelText: labelText,
          maxLength: maxLength,
        ),
        actions: [
          AdaptiveAction(
            child: Text(cancelLabel ?? i18n.app.cancel),
            onPressed: () => Navigator.pop(context),
          ),
          AdaptiveAction(
            child: Text(okLabel ?? i18n.app.ok),
            onPressed: () => _onOk(context, formGroup),
          ),
        ],
      ),
    );
  }

  Future<void> _onOk(BuildContext context, FormGroup form) async {
    // 入力チェックNGの場合は処理不要
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    // 結果を呼び出し元に返却
    final input = form.control(_textKey).value as String;
    Navigator.pop(context, input);
  }
}

class _AdaptiveTextField extends HookConsumerWidget {
  const _AdaptiveTextField({
    this.maxLength,
    required this.isRequired,
    this.labelText,
  });

  final int? maxLength;
  final bool isRequired;
  final String? labelText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = useTheme();
    if (themeData.isCupertinoPlatform) {
      return _CupertinoTextField(
        isRequired: isRequired,
        labelText: labelText,
        maxLength: maxLength,
      );
    } else {
      return _MaterialTextField(
        isRequired: isRequired,
        labelText: labelText,
        maxLength: maxLength,
      );
    }
  }
}

class _CupertinoTextField extends HookConsumerWidget {
  const _CupertinoTextField({
    this.maxLength,
    required this.isRequired,
    this.labelText,
  });

  final int? maxLength;
  final bool isRequired;
  final String? labelText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ReactiveCupertinoDialogTextField<String>(
        formControlName: _textKey,
        maxLength: maxLength,
        labelText: labelText,
        isRequired: isRequired,
        autofocus: true,
      ),
    );
  }
}

class _MaterialTextField extends HookConsumerWidget {
  const _MaterialTextField({
    this.maxLength,
    required this.isRequired,
    this.labelText,
  });

  final int? maxLength;
  final bool isRequired;
  final String? labelText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ReactiveOutlinedTextField<String>(
      formControlName: _textKey,
      maxLength: maxLength,
      labelText: labelText,
      isRequired: isRequired,
      autofocus: true,
    );
  }
}
