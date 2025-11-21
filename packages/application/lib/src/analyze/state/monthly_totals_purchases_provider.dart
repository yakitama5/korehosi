import 'package:packages_application/group.dart';
import 'package:packages_application/src/analyze/state/item_analyze_query_notifier_provider.dart';
import 'package:packages_application/src/analyze/usecase/analyze_usecase.dart';
import 'package:packages_application/user.dart';
import 'package:packages_core/extension.dart';
import 'package:packages_domain/analyze.dart';
import 'package:packages_domain/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'monthly_totals_purchases_provider.g.dart';

/// キャッシュ期間(5分間)
const _cacheDuration = Duration(minutes: 5);

@riverpod
Future<MonthlyTotalsPurchases> monthlyTotalsPurchases(
  Ref ref, {
  required YearMonthRange range,
}) async {
  // 検索に必要な情報を取得
  final query = ref.watch(itemAnalyzeQueryProvider);
  final groupId = await ref.watch(currentGroupIdProvider.future);
  final user = await ref.watch(authUserProvider.future);

  // 連続操作を想定して一定時間キャッシュする
  ref.cacheFor(_cacheDuration);

  final usecase = ref.watch(analyzeUsecaseProvider);
  return usecase.exploreMonthlyTotals(
    groupId: groupId,
    ageGroup: user?.ageGroup,
    range: range,
    query: query,
  );
}
