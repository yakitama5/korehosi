import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/model/user/user_form_model.dart';
import '../../../components/src/reactive_segmented_button.dart';

class AgeGroupField extends HookWidget {
  const AgeGroupField({
    super.key,
    this.fieldKey,
  });

  final Key? fieldKey;

  @override
  Widget build(BuildContext context) {
    return ReactiveSegmentedButton(
      formControlName: UserFormModelForm.ageGroupControlName,
      labelText: i18n.app.ageGroup,
    );
  }
}
