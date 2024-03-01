// ignore_for_file: inference_failure_on_instance_creation

import 'package:family_wish_list/app/application/validator/url_validator.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../selected_image_model.dart';

part 'item_form_model.gform.dart';

@Rf()
class ItemFormModel {
  const ItemFormModel({
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.name = '',
    @RfControl() this.wanterName,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.wishRank = 0.0,
    @RfControl() this.wishSeason,
    @RfControl() this.memo,
    @RfArray(itemValidators: [UrlValidator()]) this.urls,
    @RfArray() this.images,
  });

  final List<SelectedImageModel?>? images;
  final String? name;
  final String? wanterName;
  final double? wishRank;
  final String? wishSeason;
  final List<String>? urls;
  final String? memo;
}
