import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'analyze_buyed_purchases_provider.dart';

part 'analyze_buyed_count_provider.g.dart';

/// 購入済件数
@riverpod
Future<int> analyzeBuyedCount(AnalyzeBuyedCountRef ref) async {
  return ref.watch(
    analyzeBuyedPurchasesProvider.selectAsync((data) => data.length),
  );
}
