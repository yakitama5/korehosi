import 'package:responsive_framework/responsive_framework.dart';

import '../model/breakpoint.dart';

/// 定数にしたいのでベタ書き
const breakpoints = [
  Breakpoint(start: 0, end: 450, name: MOBILE),
  Breakpoint(start: 451, end: 900, name: TABLET),
  Breakpoint(start: 901, end: 1920, name: DESKTOP),
  Breakpoint(start: 1921, end: double.maxFinite, name: UHD),
];
