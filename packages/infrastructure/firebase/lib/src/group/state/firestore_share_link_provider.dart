import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/group/model/firestore_share_link_model.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_share_link_provider.g.dart';

/// グループ共有リンクコレクションの参照
@riverpod
CollectionReference<FirestoreShareLinkModel> shareLinkCollectionRef(Ref ref) {
  return ref
      .watch(firestoreProvider)
      .shareLinksRef()
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreShareLinkModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// グループ共有リンクドキュメントの参照
@riverpod
DocumentReference<FirestoreShareLinkModel> shareLinkDocumentRef(
  Ref ref, {
  ShareLinkId? shareLinkId,
}) => ref.watch(shareLinkCollectionRefProvider).doc(shareLinkId?.value);
