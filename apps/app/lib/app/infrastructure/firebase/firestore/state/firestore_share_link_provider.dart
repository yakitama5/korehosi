import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_share_link_model.dart';
import 'firestore.dart';

part 'firestore_share_link_provider.g.dart';

/// グループ共有リンクコレクションの参照
@riverpod
CollectionReference<FirestoreShareLinkModel> shareLinkCollectionRef(
  Ref ref,
) {
  return ref.watch(firestoreProvider).shareLinksRef().withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreShareLinkModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// グループ共有リンクドキュメントの参照
@riverpod
DocumentReference<FirestoreShareLinkModel> shareLinkDocumentRef(
  Ref ref, {
  String? shareLinkId,
}) =>
    ref.watch(shareLinkCollectionRefProvider).doc(shareLinkId);
