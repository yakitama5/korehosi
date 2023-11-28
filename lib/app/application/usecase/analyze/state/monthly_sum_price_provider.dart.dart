import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/analyze/entity/monthly_sum_price.dart';
import '../../../extension/date_time_extension.dart';
import 'analyze_buyed_purchases_provider.dart';

part 'monthly_sum_price_provider.dart.g.dart';

/// 月間合計購入金額
@riverpod
Future<Map<DateTime, MonthlySumPrice>> monthlySumPrice(
  MonthlySumPriceRef ref,
) async {
  // 購入済の購入情報を取得
  final buyedPurchases = await ref.watch(analyzeBuyedPurchasesProvider.future);

  // 月別に集計
  return buyedPurchases

      // 集計は「渡した日」の月初日で集計
      .groupListsBy((p) => p.sentAt!.firstDayOfTheMonth)

      // モデルに変換
      .map((key, value) {
    final sumPrice = value.map((p) => p.price).whereNotNull().sum;
    return MapEntry(
      key,
      MonthlySumPrice(
        yearMonth: key,
        sumPrice: sumPrice,
        count: value.length,
      ),
    );
  });
}
