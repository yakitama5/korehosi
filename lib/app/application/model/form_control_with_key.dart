import 'package:reactive_forms/reactive_forms.dart';

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
