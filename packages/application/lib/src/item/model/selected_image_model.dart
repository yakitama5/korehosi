import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/item.dart';

part 'selected_image_model.freezed.dart';

/// 画像選択時のモデル
@freezed
abstract class SelectedImageModel with _$SelectedImageModel {
  // どちらか片方は必ず値を設定することを保証する
  @Assert('savedImage != null || uploadFile != null')
  const factory SelectedImageModel({ItemImage? savedImage, XFile? uploadFile}) =
      _SelectedImageModel;
}
