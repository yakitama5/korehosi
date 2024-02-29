import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'image_path_list.gform.dart';

@Rf()
class ImagePathList {
  ImagePathList({
    @RfArray() required this.imagePathList,
  });

  final List<String> imagePathList;
}
