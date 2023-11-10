import 'package:freezed_annotation/freezed_annotation.dart';

part 'android_version.freezed.dart';

@freezed
class AndroidVersion with _$AndroidVersion {
  const factory AndroidVersion({
    String? baseOS,
    required String codename,
    required String incremental,
    int? previewSdkInt,
    required String release,
    required int sdkInt,
  }) = _AndroidVersion;
}
