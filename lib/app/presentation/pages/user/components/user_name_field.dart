import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/config/user_config.dart';
import '../../../../application/model/user/user_form_model.dart';
import '../../../components/src/reactive_outlined_text_field.dart';

class UserNameField extends HookWidget {
  const UserNameField({
    super.key,
    this.fieldKey,
  });

  final Key? fieldKey;

  @override
  Widget build(BuildContext context) {
    return ReactiveOutlinedTextField<String>(
      formControlName: UserFormModelForm.nameControlName,
      labelText: i18n.app.nameLabel,
      maxLength: userConfig.maxNameLength,
    );
  }
}
