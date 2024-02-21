import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../pages/analyze/analyze_detail_page.dart';
import '../../pages/analyze/analyze_page.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'ANALYZE');

const analyzeBranch = TypedStatefulShellBranch<BranchAnalyzeData>(
  routes: [
    TypedGoRoute<AnalyzeRouteData>(
      path: AnalyzeRouteData.path,
      routes: [
        TypedGoRoute<AnalyzeDetailRouteData>(
          path: AnalyzeDetailRouteData.path,
        ),
      ],
    ),
  ],
);

class BranchAnalyzeData extends StatefulShellBranchData {
  const BranchAnalyzeData();
}

class AnalyzeRouteData extends GoRouteData {
  const AnalyzeRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/analyze';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnalyzePage();
}

class AnalyzeDetailRouteData extends GoRouteData {
  const AnalyzeDetailRouteData({this.index});

  static const path = 'analyze_detail';

  final int? index;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AnalyzeDetailPage(initialIndex: index);
}
