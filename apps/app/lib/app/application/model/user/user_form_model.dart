// ignore_for_file: inference_failure_on_instance_creation

import 'package:cores_domain/user.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

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
