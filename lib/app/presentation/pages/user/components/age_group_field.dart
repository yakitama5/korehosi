import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/model/user/user_form_model.dart';
import '../../../components/src/reactive_segmented_button.dart';
import '../../../hooks/use_l10n.dart';

class AgeGroupField extends HookWidget {
  const AgeGroupField({
    super.key,
    this.fieldKey,
  });

  final Key? fieldKey;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return ReactiveSegmentedButton(
      formControlName: UserFormModelForm.ageGroupControlName,
      labelText: l10n.ageGroup,
    );
  }
}
