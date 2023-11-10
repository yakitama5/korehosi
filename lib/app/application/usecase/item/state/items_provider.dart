import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/item/entity/item.dart';
import '../item_usecase.dart';

part 'items_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<List<Item>> items(ItemsRef ref, {required String groupId}) {
  return ref.read(itemUsecaseProvider).fetchAll(groupId: groupId);
}
