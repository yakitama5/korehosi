import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_group_model.dart';
import 'firestore.dart';

part 'firestore_group_provider.g.dart';

/// グループコレクションの参照
@riverpod
CollectionReference<FirestoreGroupModel> groupCollectionRef(
  Ref ref,
) {
  return ref.watch(firestoreProvider).groupsRef().withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreGroupModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// グループドキュメントの参照
@riverpod
DocumentReference<FirestoreGroupModel> groupDocumentRef(
  Ref ref, {
  String? groupId,
}) =>
    ref.watch(groupCollectionRefProvider).doc(groupId);
