// ignore_for_file: constant_identifier_names

import 'package:responsive_framework/responsive_framework.dart';

const String UHD = '4K';

// TODO(yakitama5): デバイスのブレークポイントでない旨を明記したい または統一したい
/// レスポンシブデザインのブレークポイント
enum AppBreakpoint {
  mobile(MOBILE, 0, 450, 450),
  tablet(TABLET, 700, 900, 700),
  desktopSmall('DESKTOP_SMALL', 901, 1200, 900),
  desktopMiddle('DESKTOP_MIDDLE', 1201, 1400, 1300),
  desktopLarge(DESKTOP, 1401, 1920, 1600),
  ;

  const AppBreakpoint(this.name, this.start, this.end, this.value);

  final String name;
  final int start;
  final int end;
  final double value;
}
