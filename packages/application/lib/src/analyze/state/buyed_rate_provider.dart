import 'package:packages_application/group.dart';
import 'package:packages_application/src/analyze/state/item_analyze_query_notifier_provider.dart';
import 'package:packages_application/src/analyze/usecase/analyze_usecase.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_domain/analyze.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyed_rate_provider.g.dart';

/// 購入率を管理するProvider
@riverpod
Future<ItemBuyedRate> buyedRate(Ref ref) async {
  // 検索に必要な情報を取得
  final query = ref.watch(itemAnalyzeQueryProvider);
  final groupId = await ref.watch(currentGroupIdProvider.future);
  final user = await ref.watch(authUserProvider.future);

  final usecase = ref.watch(analyzeUsecaseProvider);
  return usecase.exploreBuyedRate(
    groupId: groupId,
    ageGroup: user?.ageGroup,
    query: query,
  );
}
