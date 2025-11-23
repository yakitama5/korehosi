import 'package:packages_application/src/item/usecase/item_usecase.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wanter_name_histories_provider.g.dart';

/// ほしい人の履歴を取得する
@riverpod
Stream<List<String>> wanterNameHistories(Ref ref, {required GroupId groupId}) {
  return ref
      .watch(itemUsecaseProvider)
      .fetchWanterNameHistories(groupId: groupId);
}
