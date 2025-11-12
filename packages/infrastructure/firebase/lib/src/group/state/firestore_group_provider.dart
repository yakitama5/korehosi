import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/group/model/firestore_group_model.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_group_provider.g.dart';

/// グループコレクションの参照
@riverpod
CollectionReference<FirestoreGroupModel> groupCollectionRef(Ref ref) {
  return ref
      .watch(firestoreProvider)
      .groupsRef()
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreGroupModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// グループドキュメントの参照
@riverpod
DocumentReference<FirestoreGroupModel> groupDocumentRef(
  Ref ref, {
  GroupId? groupId,
}) => ref.watch(groupCollectionRefProvider).doc(groupId?.value);
