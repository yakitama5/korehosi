import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/state/firebase_functions_provider.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/group/model/firestore_group_model.dart';
import 'package:infrastructure_firebase/src/group/model/firestore_share_link_model.dart';
import 'package:infrastructure_firebase/src/group/model/functions_join_group_response.dart';
import 'package:infrastructure_firebase/src/group/model/join_group_request.dart';
import 'package:infrastructure_firebase/src/group/state/firestore_deleted_group_provider.dart';
import 'package:infrastructure_firebase/src/group/state/firestore_group_provider.dart';
import 'package:infrastructure_firebase/src/group/state/firestore_share_link_provider.dart';
import 'package:infrastructure_firebase/src/user/state/firestore_user_provider.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseGroupRepository implements GroupRepository {
  const FirebaseGroupRepository(this.ref);

  final Ref ref;

  @override
  Stream<Group?> fetch({required GroupId groupId}) {
    return ref
        .read(groupDocumentRefProvider(groupId: groupId))
        .snapshots()
        .where((s) {
          // 読み込み中のドキュメントが存在する場合はスキップ
          final doc = s.data();
          return doc == null || !doc.fieldValuePending;
        })
        .map((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<void> add({
    required String name,
    required List<UserId> joinUids,
    required UserId ownerUid,
    int? itemCount,
    required bool premium,
  }) async {
    // 新しいドキュメントを取得
    final userDocRef = ref.read(userDocumentRefProvider(userId: ownerUid));
    final groupDocRef = ref.read(groupDocumentRefProvider());

    // Firestore用のモデルに変換
    final group = FirestoreGroupModel(
      id: groupDocRef.id,
      name: name,
      joinUids: joinUids.map((e) => e.value).toList(),
      premium: premium,
      ownerUid: ownerUid.value,
      itemCount: itemCount,
    );

    // 登録
    await ref
        .read(firestoreProvider)
        .runTransaction(
          (transaction) async => transaction
              // グループを追加
              .set(groupDocRef, group)
              // ユーザーの参加グループへ追加
              .update(userDocRef, {
                'joinGroupIds': FieldValue.arrayUnion([groupDocRef.id]),
              }),
        );
  }

  @override
  Future<void> update({required GroupId groupId, required String name}) async {
    // Firestore用のモデルに変換
    final docRef = ref.read(groupDocumentRefProvider(groupId: groupId));
    final prev = await docRef.get();
    if (!prev.exists) {
      throw const BusinessException(BusinessExceptionType.updateTargetNotFound);
    }
    final docModel = prev.data()!.copyWith(name: name);

    // 更新
    return docRef.set(docModel);
  }

  @override
  Future<void> delete({required GroupId groupId}) async {
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // 削除前の状態を保持
      final docRef = ref.read(groupDocumentRefProvider(groupId: groupId));
      final delDocRef = ref.read(dgroupDocumentRefProvider(groupId: groupId));
      final doc = await transaction.get(docRef);

      transaction
          // ドキュメントの削除
          .delete(docRef)
          // 削除用ドキュメントの追加
          .set<FirestoreGroupModel>(delDocRef, doc.data()!);
    });
  }

  @override
  Stream<ShareLink?> fetchShareLink({required ShareLinkId shareLinkId}) {
    return ref
        .read(shareLinkDocumentRefProvider(shareLinkId: shareLinkId))
        .snapshots()
        .skipWhile((element) {
          // 読み込み中のドキュメントが存在する場合はスキップ
          final doc = element.data();
          return doc != null && doc.createdAt == null;
        })
        .map((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<JoinGroupErrorCode?> joinGroup({
    required ShareLinkId shareLinkId,
  }) async {
    // 参加用のFunctionsをコール (権限を考慮してFunctionsで定義)
    final functions = ref.read(firebaseFunctionsProvider);
    final param = JoinGroupRequest(shareLinkId: shareLinkId.value);
    final result = await functions
        .httpsCallable('joinGroup')
        .call<Map<String, dynamic>>(param.toJson());

    // エラーハンドリング
    final resultCode = FunctionsJoinGroupResponse.fromJson(
      result.data,
    ).errorCode;
    return switch (resultCode) {
      'not-auth' => JoinGroupErrorCode.notAuth,
      'invalid-param' => JoinGroupErrorCode.invalidRequest,
      'invalid-date' => JoinGroupErrorCode.invalidDate,
      'joined-group' => JoinGroupErrorCode.joinedGroup,
      'over-count' => JoinGroupErrorCode.overCount,
      _ => null,
    };
  }

  @override
  Future<void> leave({required GroupId groupId, required UserId userId}) async {
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // ドキュメントの取得
      final groupDocRef = ref.read(groupDocumentRefProvider(groupId: groupId));
      final userDocRef = ref.read(userDocumentRefProvider(userId: userId));

      transaction
          // グループから除外
          .update(groupDocRef, {
            'joinUids': FieldValue.arrayRemove([userId]),
          })
          // ユーザーの参加グループから削除
          .update(userDocRef, {
            'joinGroupIds': FieldValue.arrayRemove([groupId]),
          });
    });
  }

  @override
  Future<String> addShareLink({
    required GroupId groupId,
    required int validDays,
  }) async {
    final docRef = ref.read(shareLinkDocumentRefProvider());
    // 登録
    final param = FirestoreShareLinkModel(
      id: docRef.id,
      groupId: groupId.value,
      validDays: validDays,
    );
    await docRef.set(param);

    // 登録後のIDを返却する
    return docRef.id;
  }
}
