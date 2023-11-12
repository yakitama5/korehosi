import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/android_version.dart';

part 'android_info.freezed.dart';

/// Androidの端末情報
@freezed
class AndroidInfo with _$AndroidInfo {
  const factory AndroidInfo({
    required AndroidVersion version,
    required String brand,
    required String device,
  }) = _AndroidInfo;
}
