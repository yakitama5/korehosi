import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/value_object/age_group.dart';
import '../../../config/user_config.dart';
import 'auth_user_provider.dart';

part 'user_form_provider.g.dart';

/// ユーザーの入力フォーム
@riverpod
class UserForm extends _$UserForm {
  @override
  FutureOr<FormGroup> build() async {
    // 初期値は認証ユーザーの情報を設定
    final initial = await ref.read(authUserProvider.future);

    return FormGroup({
      userConfig.nameKey: FormControl<String>(
        value: initial?.name,
      ),
      userConfig.ageGroupKey: FormControl<AgeGroup>(
        value: initial?.ageGroup ?? userConfig.initialAgeGroup,
        validators: [Validators.required],
      ),
    });
  }
}
