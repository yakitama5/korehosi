part of 'routes_data.dart';

final _analyzeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'ANALYZE');

const analyzeBranch = TypedStatefulShellBranch<BranchAnalyzeData>(
  routes: [
    TypedGoRoute<AnalyzeRouteData>(
      path: AnalyzeRouteData.path,
      routes: [
        TypedGoRoute<AnalyzeDetailRouteData>(path: AnalyzeDetailRouteData.path),
      ],
    ),
  ],
);

class BranchAnalyzeData extends StatefulShellBranchData {
  const BranchAnalyzeData();
}

class AnalyzeRouteData extends GoRouteData with $AnalyzeRouteData {
  const AnalyzeRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _analyzeNavigatorKey;
  static const path = '/analyze';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnalyzePage();
}

class AnalyzeDetailRouteData extends GoRouteData with $AnalyzeDetailRouteData {
  const AnalyzeDetailRouteData({this.index});

  static const path = 'analyze_detail';

  final int? index;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AnalyzeDetailPage(initialIndex: index);
}
