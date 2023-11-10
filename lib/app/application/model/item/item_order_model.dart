import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../order.dart';
import 'item_order_key.dart';

part 'item_order_model.freezed.dart';

@freezed
class ItemOrderModel with _$ItemOrderModel {
  const factory ItemOrderModel({
    required ItemOrderKey key,
    required SortOrder sortOrder,
  }) = _ItemOrderModel;

  const ItemOrderModel._();

  String localeName(L10n l10n) => key.localeName(l10n);
  IconData get iconData => key.iconData(sortOrder);
}
