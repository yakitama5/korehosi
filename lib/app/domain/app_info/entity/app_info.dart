import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info.freezed.dart';

/// アプリ情報
@freezed
class AppInfo with _$AppInfo {
  const factory AppInfo({
    required String appName,
    required String packageName,
    required String version,
    required String buildNumber,
  }) = _AppInfo;
}
