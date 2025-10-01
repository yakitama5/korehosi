import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_config.freezed.dart';

/// ほしい物の設定
@freezed
abstract class ItemConfig with _$ItemConfig {
  const factory ItemConfig({
    required int maxNameLength,
    required int maxWanterNameLength,
    required int maxWishSeasonLength,
    required int maxUrlLength,
    required int maxMemoLength,
  }) = _ItemConfig;
}
