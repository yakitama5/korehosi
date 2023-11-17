import 'package:flutter/material.dart';

extension ColorSchemeX on ColorScheme {
  /// `surfaceContainer`の拡張定義
  /// HACK(yakitama5): SurfaceContainerのカラー設定がまだ未実装なので自分で作ってやる
  Color get surfaceContainer => ElevationOverlay.applySurfaceTint(
        background,
        surfaceTint,
        3,
      );

  /// HACK(yakitama5): SurfaceContainerLowのカラー設定がまだ未実装なので自分で作ってやる
  Color get surfaceContainerLow {
    return ElevationOverlay.applySurfaceTint(
      background,
      surfaceTint,
      2,
    );
  }
}
