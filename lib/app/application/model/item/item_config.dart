import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_config.freezed.dart';

/// ほしい物の設定
@freezed
class ItemConfig with _$ItemConfig {
  const factory ItemConfig({
    required double initialWishRank,
    required String nameKey,
    required String imagesKey,
    required String wanterNameKey,
    required String wishRankKey,
    required String wishSeasonKey,
    required String urlsKey,
    required String memoKey,
    required int maxNameLength,
    required int maxWanterNameLength,
    required int maxWishSeasonLength,
    required int maxUrlLength,
    required int maxMemoLength,
  }) = _ItemConfig;
}
