import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../application/state/locale_provider.dart';
import '../../../theme/importer.dart';
import '../reactive_cupertino_text_field.dart';
import '../reactive_outlined_text_field.dart';
import 'adaptive_action.dart';

const _nameKey = 'name';

class TextDialog extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveFormBuilder(
      form: () => FormGroup({
        _nameKey: FormControl<String>(
          value: initial,
          validators: [
            if (isRequired) Validators.required,
          ],
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
            child: Text(cancelLabel ?? l10n.cancel),
            onPressed: () => Navigator.pop(context),
          ),
          AdaptiveAction(
            child: Text(okLabel ?? l10n.ok),
            onPressed: () => _onOk(context, ref, formGroup),
          ),
        ],
      ),
    );
  }

  Future<void> _onOk(
    BuildContext context,
    WidgetRef ref,
    FormGroup form,
  ) async {
    // 入力チェックNGの場合は処理不要
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    // 結果を呼び出し元に返却
    final input = form.control(_nameKey).value as String;
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
    final themeData = context.themeData;
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
        formControlName: _nameKey,
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
      formControlName: _nameKey,
      maxLength: maxLength,
      labelText: labelText,
      isRequired: isRequired,
      autofocus: true,
    );
  }
}
