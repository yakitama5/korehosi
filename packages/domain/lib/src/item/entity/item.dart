import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/src/item/entity/item_image.dart';

part 'item.freezed.dart';

extension type ItemId(String value) {}

/// ほしい物
@freezed
abstract class Item with _$Item {
  const factory Item({
    required ItemId id,
    List<ItemImage>? images,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
    String? memo,
    Purchase? purchase,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Item;
}
