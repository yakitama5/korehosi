import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/src/item/usecase/item_usecase.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_core/extension.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_provider.g.dart';

/// キャッシュ期間(1分間)
const _cacheDuration = Duration(minutes: 1);

/// 現在のグループ内の欲しい物
@riverpod
Future<Item?> item(Ref ref, {required ItemId itemId}) async {
  // 検索に必要な情報を取得
  final groupId = await ref.watch(currentGroupIdProvider.future);
  final user = await ref.watch(authUserProvider.future);

  if (user == null) {
    return null;
  }

  // 連続操作を想定して一定時間キャッシュする
  ref.cacheFor(_cacheDuration);

  // 検索
  final usecase = ref.read(itemUsecaseProvider);
  return usecase.fetch(
    groupId: groupId,
    itemId: itemId,
    ageGroup: user.ageGroup,
  );
}
