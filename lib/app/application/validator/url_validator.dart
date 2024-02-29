import 'package:reactive_forms/reactive_forms.dart';

/// URL形式のバリデーション
class UrlValidator extends Validator<dynamic> {
  const UrlValidator() : super();

  static const validatorKey = 'url_pattern';

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    // 未入力・未設定・誤設定は許容する
    if (control.isNull ||
        control.value is! String ||
        (control.value as String).isEmpty) {
      return null;
    }

    final value = control.value as String;
    final validURL = Uri.tryParse(value) != null;
    return validURL ? null : {validatorKey: true};
  }
}
