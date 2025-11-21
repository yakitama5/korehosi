import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_domain/analyze.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analyze_usecase.g.dart';

@riverpod
AnalyzeUsecase analyzeUsecase(Ref ref) => AnalyzeUsecase(ref);

/// ほしい物に関するユースケース
class AnalyzeUsecase with RunUsecaseMixin {
  AnalyzeUsecase(this.ref);

  final Ref ref;

  AnalyzeRepository get _repository => ref.read(analyzeRepositoryProvider);

  // グループ内のほしいものの購入率を導き出す
  Future<ItemBuyedRate> exploreBuyedRate({
    required GroupId? groupId,
    required AgeGroup? ageGroup,
    required ItemAnalyzeQuery query,
  }) {
    // 必要な情報が存在しない場合はエラー
    if (groupId == null) {
      throw const BusinessException(BusinessExceptionType.notSelectedGroup);
    } else if (ageGroup == null) {
      throw const BusinessException(BusinessExceptionType.notAuth);
    }

    return _repository.exploreBuyedRate(
      groupId: groupId,
      ageGroup: ageGroup,
      query: query,
    );
  }

  /// グループ内のほしいものの月別購入金額を導き出す
  Future<MonthlyTotalsPurchases> exploreMonthlyTotals({
    required GroupId? groupId,
    required AgeGroup? ageGroup,
    required YearMonthRange range,
    required ItemAnalyzeQuery query,
  }) {
    // 必要な情報が存在しない場合はエラー
    if (groupId == null) {
      throw const BusinessException(BusinessExceptionType.notSelectedGroup);
    } else if (ageGroup == null) {
      throw const BusinessException(BusinessExceptionType.notAuth);
    }

    return _repository.exploreMonthlyTotals(
      groupId: groupId,
      ageGroup: ageGroup,
      range: range,
      query: query,
    );
  }
}
