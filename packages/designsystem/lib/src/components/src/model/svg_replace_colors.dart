import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'svg_replace_colors.freezed.dart';

@freezed
class SvgReplaceColors with _$SvgReplaceColors {
  const factory SvgReplaceColors({
    required Color rawColor,
    required Color color,
  }) = _SvgReplaceColors;
}
