import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/item.dart';
import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/user.dart';
import 'package:packages_core/extension.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_items_provider.g.dart';

/// キャッシュ期間(3分間)
const _cacheDuration = Duration(minutes: 3);

/// ほしい物の一覧
@riverpod
Future<PageInfo<Item>> searchItems(Ref ref, {required int page}) async {
  // 検索に必要な情報を取得
  final query = ref.watch(itemsSearchQueryNotifierProvider);
  final groupId = await ref.watch(currentGroupIdProvider.future);
  final user = await ref.watch(authUserProvider.future);

  if (user == null || groupId == null) {
    return PageInfo.empty();
  }

  // 連続操作を想定して一定時間キャッシュする
  ref.cacheFor(_cacheDuration);

  return ref
      .read(itemUsecaseProvider)
      .searchItems(
        page: page,
        groupId: groupId,
        ageGroup: user.ageGroup,
        query: query,
      );
}
