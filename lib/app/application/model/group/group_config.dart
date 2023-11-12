import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_config.freezed.dart';

/// グループの設定
@freezed
class GroupConfig with _$GroupConfig {
  const factory GroupConfig({
    required bool initialPremium,
    required int initialItemCount,
    required int validDays,
  }) = _GroupConfig;
}
