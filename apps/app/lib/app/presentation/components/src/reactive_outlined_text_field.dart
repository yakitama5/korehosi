import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'my_reactive_raw_autocomplete.dart';

class ReactiveOutlinedRawAutocomplete
    extends ReactiveFormField<String, String> {
  ReactiveOutlinedRawAutocomplete({
    super.key,
    required String formControlName,
    required List<String> options,
    String? labelText,
    int? maxLength,
  }) : super(
         formControlName: formControlName,
         builder: (ReactiveFormFieldState<String, String> field) =>
             _ReactiveOutlinedRawAutocomplete(
               key: key,
               formControlName: formControlName,
               field: field,
               labelText: labelText,
               maxLength: maxLength,
               options: options,
             ),
       );
}

class _ReactiveOutlinedRawAutocomplete extends StatelessWidget {
  const _ReactiveOutlinedRawAutocomplete({
    super.key,
    required this.formControlName,
    required this.options,
    required this.field,
    this.labelText,
    this.maxLength,
  });
  final String? labelText;
  final String formControlName;
  final int? maxLength;
  final List<String> options;
  final ReactiveFormFieldState<String, String> field;

  @override
  Widget build(BuildContext context) {
    return MyReactiveRawAutocomplete<String, String>(
      formControlName: formControlName,

      // 直接入力された値を反映するため、`viewDataTypeFromTextEditingValue`を指定
      // https://github.com/artflutter/reactive_forms_widgets/issues/72
      viewDataTypeFromTextEditingValue: (p0) => p0,

      // キーボード操作に対応させる
      autocompleteOnSubmit: true,

      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        alignLabelWithHint: true,
        border: const OutlineInputBorder(),
        suffixIcon: field.errorText?.isNotEmpty == true
            ? Icon(Icons.error, color: Theme.of(context).colorScheme.error)
            : const SizedBox.shrink(),
      ),
      optionsBuilder: (TextEditingValue textEditingValue) {
        return options.where((option) {
          return option.contains(textEditingValue.text);
        });
      },

      optionsViewBuilder:
          (
            BuildContext context,
            AutocompleteOnSelected<String> onSelected,
            Iterable<String> options,
          ) {
            // キー操作を行うため、選択されている箇所を取得
            final selectedIndex = AutocompleteHighlightedOption.of(context);

            return Align(
              alignment: Alignment.topLeft,
              child: Material(
                elevation: 4,
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      final option = options.elementAt(index);
                      return GestureDetector(
                        onTap: () {
                          onSelected(option);
                        },
                        child: ListTile(
                          title: Text(option),
                          selected: selectedIndex == index,
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
    );
  }
}

class ReactiveOutlinedTextField<T> extends ReactiveFormField<T, T> {
  ReactiveOutlinedTextField({
    super.key,
    required String formControlName,
    String? labelText,
    String? hintText,
    bool isRequired = false,
    Map<String, ValidationMessageFunction>? validationMessages,
    int? minLines,
    int maxLines = 1,
    int? maxLength,
    String? counterText,
    String? prefixText,
    TextInputType? textInputType,
    bool autofocus = false,
    List<TextInputFormatter>? inputFormatters,
  }) : super(
         formControlName: formControlName,
         builder: (ReactiveFormFieldState<T, T> field) =>
             _ReactiveOutlinedTextField<T>(
               formControlName: formControlName,
               field: field,
               labelText: labelText,
               hintText: hintText,
               isRequired: isRequired,
               validationMessages: validationMessages,
               maxLength: maxLength,
               maxLines: maxLines,
               minLines: minLines,
               counterText: counterText,
               textInputType: textInputType,
               prefixText: prefixText,
               inputFormatters: inputFormatters,
               autofocus: autofocus,
             ),
       );
}

class _ReactiveOutlinedTextField<T> extends HookWidget {
  const _ReactiveOutlinedTextField({
    super.key,
    required this.formControlName,
    required this.field,
    this.labelText,
    this.hintText,
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

  final ReactiveFormFieldState<T, T> field;
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
    return ReactiveTextField<T>(
      formControlName: formControlName,
      autofocus: autofocus,
      validationMessages: {...?validationMessages},
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: '$labelText${isRequired ? i18n.app.requiredIcon : ''}',
        prefixText: prefixText,
        hintText: hintText,
        counterText: counterText,
        alignLabelWithHint: true,
        helperText: isRequired ? i18n.app.requiredHelper : '',
        border: const OutlineInputBorder(),
        suffixIcon: field.errorText?.isNotEmpty == true
            ? Icon(Icons.error, color: Theme.of(context).colorScheme.error)
            : const SizedBox.shrink(),
      ),
    );
  }
}
