import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/config/user_config.dart';
import '../../../../application/model/user/user_form_model.dart';
import '../../../components/src/reactive_outlined_text_field.dart';
import '../../../hooks/use_l10n.dart';

class UserNameField extends HookWidget {
  const UserNameField({
    super.key,
    this.fieldKey,
  });

  final Key? fieldKey;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return ReactiveOutlinedTextField<String>(
      formControlName: UserFormModelForm.nameControlName,
      labelText: l10n.nameLabel,
      maxLength: userConfig.maxNameLength,
    );
  }
}
