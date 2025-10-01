import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../item_usecase.dart';

part 'items_provider.g.dart';

/// ほしい物の一覧
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<List<Item>> items(Ref ref, {required String groupId}) {
  return ref.read(itemUsecaseProvider).fetchAll(groupId: groupId);
}
