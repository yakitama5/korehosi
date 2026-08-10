import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/widgets.dart';

class AgeGroupField extends HookWidget {
  const AgeGroupField({
    super.key,
    this.fieldKey,
    this.helperText,
    this.readOnly = false,
  });

  final Key? fieldKey;
  final String? helperText;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return ReactiveSegmentedButton(
      formControlName: UserFormModelForm.ageGroupControlName,
      labelText: i18n.user.common.ageGroup,
      helperText: helperText,
      readOnly: readOnly,
    );
  }
}
