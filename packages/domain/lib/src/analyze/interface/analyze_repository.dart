import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/src/analyze/value_object/item_analyze_query.dart';
import 'package:packages_domain/src/analyze/value_object/item_buyed_rate.dart';
import 'package:packages_domain/src/analyze/value_object/monthly_totals_purchases.dart';
import 'package:packages_domain/src/common/value_object/year_month.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analyze_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
AnalyzeRepository analyzeRepository(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// ほしい物を管理するリポジトリ
abstract class AnalyzeRepository {
  // グループ内のほしいものの購入率を導き出す
  Future<ItemBuyedRate> exploreBuyedRate({
    required GroupId groupId,
    required AgeGroup ageGroup,
    required ItemAnalyzeQuery query,
  });

  // グループ内のほしいものの月別購入金額を導き出す
  Future<MonthlyTotalsPurchases> exploreMonthlyTotals({
    required GroupId groupId,
    required AgeGroup ageGroup,
    required YearMonth fromYearMonth,
    required YearMonth toYearMonth,
    required ItemAnalyzeQuery query,
  });
}
