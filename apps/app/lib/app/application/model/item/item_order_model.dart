import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../order.dart';
import 'item_order_key.dart';

part 'item_order_model.freezed.dart';

/// ほしい物の並び順
@freezed
abstract class ItemOrderModel with _$ItemOrderModel {
  const factory ItemOrderModel({
    required ItemOrderKey key,
    required SortOrder sortOrder,
  }) = _ItemOrderModel;

  const ItemOrderModel._();

  String get localeName => key.localeName;
  IconData get iconData => key.iconData(sortOrder);
}
