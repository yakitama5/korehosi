import 'package:reactive_forms/reactive_forms.dart';

/// ReactiveFormで動的に追加されるFormを保持するためのコントロール
/// 一意な値を`key`に指定することで、ID項目を別持ちしないようにする
class FormControlWithKey<T> extends FormControl<T> {
  FormControlWithKey({
    super.value,
    super.validators,
    super.asyncValidators,
    super.asyncValidatorsDebounceTime,
    super.touched,
    super.disabled,
    required this.key,
  });

  final String key;
}
