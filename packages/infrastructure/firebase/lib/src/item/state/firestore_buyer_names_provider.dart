import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_buyer_name_model.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_buyer_names_provider.g.dart';

/// かった人コレクションの参照
@riverpod
CollectionReference<FirestoreBuyerNameModel> buyerNameCollectionRef(
  Ref ref, {
  required GroupId groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .buyerNamesRef(groupId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreBuyerNameModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => value.toJson(),
      );
}
