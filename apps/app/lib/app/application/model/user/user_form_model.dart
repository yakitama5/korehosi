// ignore_for_file: inference_failure_on_instance_creation

import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../../../domain/user/value_object/age_group.dart';

part 'user_form_model.gform.dart';

@Rf()
class UserFormModel {
  const UserFormModel({
    @RfControl() this.name,
    @RfControl(validators: [RequiredValidator()])
    this.ageGroup = AgeGroup.child,
  });

  final String? name;
  final AgeGroup ageGroup;
}
