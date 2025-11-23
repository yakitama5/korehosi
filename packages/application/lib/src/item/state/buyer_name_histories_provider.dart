import 'package:packages_application/src/item/usecase/purchase_usecase.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyer_name_histories_provider.g.dart';

@riverpod
Stream<List<String>> buyerNameHistories(Ref ref, {required GroupId groupId}) =>
    ref
        .watch(purchaseUsecaseProvider)
        .fetchBuyerNameHistories(groupId: groupId);
