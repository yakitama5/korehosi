import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/widgets.dart';

class AgeGroupField extends HookWidget {
  const AgeGroupField({super.key, this.fieldKey});

  final Key? fieldKey;

  @override
  Widget build(BuildContext context) {
    return ReactiveSegmentedButton(
      formControlName: UserFormModelForm.ageGroupControlName,
      labelText: i18n.app.ageGroup,
    );
  }
}
