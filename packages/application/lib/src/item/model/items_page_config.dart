import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_page_config.freezed.dart';

/// ほしい物の設定
@freezed
abstract class ItemsPageConfig with _$ItemsPageConfig {
  const factory ItemsPageConfig({required int pageSize}) = _ItemsPageConfig;
}
