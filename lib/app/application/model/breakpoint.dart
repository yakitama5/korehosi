import 'package:responsive_framework/responsive_breakpoints.dart';

// ignore: constant_identifier_names
const String UHD = '4K';

/// レスポンシブデザインのブレークポイント
enum AppBreakpoint {
  mobile(MOBILE, 0, 450),
  tablet(TABLET, 451, 900),
  desktop(DESKTOP, 901, 1920),
  uhd(UHD, 1921, double.infinity),
  ;

  const AppBreakpoint(this.name, this.start, this.end);

  final String name;
  final double start;
  final double end;
}
