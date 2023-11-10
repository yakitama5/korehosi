import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_config.freezed.dart';

@freezed
class UrlConfig with _$UrlConfig {
  const factory UrlConfig({
    required String contactUs,
    required String privacyPolicyJa,
    required String howToUse,
    required String developperXWeb,
    required String developperXApp,
  }) = _UrlConfig;
}
