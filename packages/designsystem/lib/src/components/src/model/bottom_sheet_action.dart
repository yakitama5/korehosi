import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_action.freezed.dart';

@freezed
class BottomSheetAction<T> with _$BottomSheetAction<T> {
  const factory BottomSheetAction({
    required Widget title,
    Widget? icon,
    required T value,
  }) = _BottomSheetAction<T>;
}
