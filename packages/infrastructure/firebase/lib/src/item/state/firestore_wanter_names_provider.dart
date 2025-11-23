import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_wanter_name_model.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_wanter_names_provider.g.dart';

/// ほしい人コレクションの参照
@riverpod
CollectionReference<FirestoreWanterNameModel> wanterNameCollectionRef(
  Ref ref, {
  required GroupId groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .wanterNamesRef(groupId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreWanterNameModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => value.toJson(),
      );
}
