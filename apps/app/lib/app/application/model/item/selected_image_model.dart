import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'selected_image_model.freezed.dart';

/// 画像選択時のモデル
@freezed
abstract class SelectedImageModel with _$SelectedImageModel {
  // どちらか片方は必ず値を設定することを保証する
  @Assert('imagePath != null || uploadFile != null')
  const factory SelectedImageModel({
    String? imagePath,
    XFile? uploadFile,
  }) = _SelectedImageModel;
}
