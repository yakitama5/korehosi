// ignore_for_file: inference_failure_on_instance_creation

import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'purchase_form_model.gform.dart';

@Rf()
class PurchaseFormModel {
  const PurchaseFormModel({
    @RfControl() this.price,
    @RfControl() this.buyerName,
    @RfControl() this.planDate,
    @RfControl() this.surprise = true,
    @RfControl() this.sentAt,
    @RfControl() this.memo,
  });

  // カンマ表示を行うため
  final String? price;
  final String? buyerName;
  final DateTime? planDate;
  final bool surprise;
  final DateTime? sentAt;
  final String? memo;
}
