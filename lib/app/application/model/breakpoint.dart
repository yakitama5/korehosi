import 'package:responsive_framework/responsive_breakpoints.dart';

// ignore: constant_identifier_names
const String UHD = '4K';

enum AppBreakpoint {
  mobile,
  tablet,
  desktop,
  uhd,
}

extension AppBreakpointX on AppBreakpoint {
  String get name {
    return switch (this) {
      AppBreakpoint.mobile => MOBILE,
      AppBreakpoint.tablet => TABLET,
      AppBreakpoint.desktop => DESKTOP,
      AppBreakpoint.uhd => UHD,
    };
  }

  double get start {
    return switch (this) {
      AppBreakpoint.mobile => 0,
      AppBreakpoint.tablet => 451,
      AppBreakpoint.desktop => 901,
      AppBreakpoint.uhd => 1921,
    };
  }

  double get end {
    return switch (this) {
      AppBreakpoint.mobile => 450,
      AppBreakpoint.tablet => 900,
      AppBreakpoint.desktop => 1920,
      AppBreakpoint.uhd => double.infinity,
    };
  }
}
