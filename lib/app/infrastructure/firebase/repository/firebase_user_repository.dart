import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';
import '../../../domain/exception/exceptions.dart';
import '../../../domain/user/entity/auth_status.dart';
import '../../../domain/user/entity/user.dart';
import '../../../domain/user/interface/user_repository.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../google/state/google_sign_in.dart';
import '../authentication/extension/firebase_auth_user_extension.dart';
import '../authentication/state/firebase_auth.dart';
import '../firestore/model/firestore_group_model.dart';
import '../firestore/model/firestore_user_model.dart';
import '../firestore/state/firestore.dart';
import '../firestore/state/firestore_deleted_user_provider.dart';
import '../firestore/state/firestore_group_provider.dart';
import '../firestore/state/firestore_participant_provider.dart';
import '../firestore/state/firestore_user_provider.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseUserRepository implements UserRepository {
  const FirebaseUserRepository(this.ref);

  final Ref ref;

  /// 認証ユーザー
  auth.User? get _currentUser => ref.read(firebaseAuthProvider).currentUser;

  @override
  Stream<User?> fetch({required String userId}) {
    return ref
        .read(userDocumentRefProvider(userId: userId))
        .snapshots()
        .where((s) {
      // 読み込み中のドキュメントが存在する場合はスキップ
      final doc = s.data();
      return doc == null || !doc.fieldValuePending;
    }).map((snap) => snap.data()?.toDomainModel());
  }

  @override
  Stream<List<User>> fetchByGroupId({required String groupId}) => ref
      // グループの参加者はセキュリティの観点からユーザーコレクションではなく、専用のコレクションからアクセスする
      .read(participantCollectionRefProvider(groupId: groupId))
      .snapshots()
      // 読み込み中のドキュメントが存在する場合はスキップ
      .where(
        (s) =>
            s.docs.where((element) => element.data().fieldValuePending).isEmpty,
      )
      .map((snap) => snap.docs.map((e) => e.data().toDomainModel()).toList());

  @override
  Future<void> signUp({
    required AgeGroup ageGroup,
    String? name,
    required String groupName,
    required bool premium,
  }) async {
    // 認証 (すでに認証だけしていたらIDの取得だけ)
    final authUid = await _authSignUp();

    // 新しいドキュメントを取得
    final userDocRef = ref.read(userDocumentRefProvider(userId: authUid));
    final groupDocRef = ref.read(groupDocumentRefProvider());

    // Firestore用のモデルに変換
    final userId = userDocRef.id;
    final groupId = groupDocRef.id;
    final user = FirestoreUserModel(
      id: userId,
      ageGroup: ageGroup,
      name: name,
      joinGroupIds: [groupId],
    );
    final group = FirestoreGroupModel(
      id: groupDocRef.id,
      name: groupName,
      joinUids: [userId],
      ownerUid: userId,
      premium: premium,
    );

    // 同時に登録
    await ref.read(firestoreProvider).runTransaction((transaction) async {
      return transaction.set(userDocRef, user).set(groupDocRef, group);
    });
  }

  @override
  Future<void> update({
    required String userId,
    required AgeGroup ageGroup,
    String? name,
    List<String>? fcmTokens,
  }) async {
    // Firestore用のモデルに変換
    final docRef = ref.read(userDocumentRefProvider(userId: userId));
    final prev = await docRef.get();
    if (!prev.exists) {
      throw UpdateTargetNotFoundException();
    }

    final param = prev.data()!.copyWith(
          id: userId,
          ageGroup: ageGroup,
          name: name,
          fcmTokens: fcmTokens,
        );

    // 更新
    return ref.read(userDocumentRefProvider(userId: userId)).set(param);
  }

  @override
  Future<void> delete({required String userId}) async {
    // ユーザーモデルの削除
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // 削除前の状態を保持
      final docRef = ref.read(userDocumentRefProvider(userId: userId));
      final delDocRef = ref.read(duserDocumentRefProvider(userId: userId));
      final doc = await transaction.get(docRef);

      transaction
          // ドキュメントの削除
          .delete(docRef)
          // 削除用ドキュメントの追加
          .set<FirestoreUserModel>(delDocRef, doc.data()!);
    });

    // 認証情報の削除
    await ref.read(firebaseAuthProvider).currentUser?.delete();
  }

  @override
  Stream<AuthStatus?> fetchAuthStatus() {
    return ref.read(firebaseAuthProvider).userChanges().map((authUser) {
      if (authUser == null) {
        return null;
      }
      return authUser.authStatus;
    });
  }

  @override
  Future<AuthStatus> signInAnonymously() async {
    // 匿名ログイン
    final credential = await ref.read(firebaseAuthProvider).signInAnonymously();

    // 結果を変換
    return credential.user!.authStatus;
  }

  @override
  Future<AuthStatus> signInWithApple() async {
    // プラットフォームに応じた認証
    final credential =
        await (kIsWeb ? _signInWithAppleByWeb() : _signInWithAppleByMobile());

    // 変換して返却
    return credential.user!.authStatus;
  }

  @override
  Future<AuthStatus> signInWithGoogle() async {
    // TODO(yakitama5): Web専用のやり方をサポートする
    final credential = await _signInWithGoogleByMobile();
    return credential.user!.authStatus;
  }

  @override
  Future<void> signOut() {
    return ref.read(firebaseAuthProvider).signOut();
  }

  @override
  Future<void> unlinkWithApple() {
    return _unlinkWithProviderId(auth.AppleAuthProvider.PROVIDER_ID);
  }

  @override
  Future<void> unlinkWithGoogle() {
    return _unlinkWithProviderId(auth.GoogleAuthProvider.PROVIDER_ID);
  }

  /// 認証状態に関するSignUp処理
  Future<String> _authSignUp() async {
    // 認証済の場合は現在の認証情報を返して終わり
    final currentUser = _currentUser;
    if (currentUser != null) {
      return currentUser.uid;
    }

    // 未認証の場合は匿名ログインを行う
    final user = await signInAnonymously();
    return user.uid;
  }

  /// モバイル用のAppleサインイン
  Future<auth.UserCredential> _signInWithAppleByMobile() {
    final firebaseAuth = ref.read(firebaseAuthProvider);
    final appleProvider = auth.AppleAuthProvider();
    final current = _currentUser;

    // 新規か既存アカウント連携の判定を行う
    if (current != null) {
      return current.linkWithProvider(appleProvider);
    } else {
      return firebaseAuth.signInWithProvider(appleProvider);
    }
  }

  /// Web用のAppleサインイン
  Future<auth.UserCredential> _signInWithAppleByWeb() {
    final firebaseAuth = ref.read(firebaseAuthProvider);
    final appleProvider = auth.AppleAuthProvider();
    final current = _currentUser;

    // 新規か既存アカウント連携の判定を行う
    if (current != null) {
      return current.linkWithPopup(appleProvider);
    } else {
      return firebaseAuth.signInWithPopup(appleProvider);
    }
  }

  /// Mobile用のGoogleサインイン
  Future<auth.UserCredential> _signInWithGoogleByMobile() async {
    final googleUser = await ref.read(googleSignInProvider).signIn();
    if (googleUser == null) {
      // TODO(yakitama5): メッセージ(多言語化)はアプリ層ですること
      throw BusinessException('Google認証に失敗しました。');
    }

    final googleAuth = await googleUser.authentication;
    final credential = auth.GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // 現在のユーザー情報があれば連携する
    final current = _currentUser;
    if (current != null) {
      return current.linkWithCredential(credential);
    } else {
      return ref.read(firebaseAuthProvider).signInWithCredential(credential);
    }
  }

  /// 連携アカウントの解除
  Future<auth.User?> _unlinkWithProviderId(String providerId) async {
    final l10n = ref.read(l10nProvider);

    // 認証されてなければNG
    final user = _currentUser;

    // 認証済か否か
    final linkedProvider = user?.providerData
            .where((u) => u.providerId == providerId)
            .isNotEmpty ??
        false;
    // 他の連携アカウントが存在するか否か
    final linkedMultiProvider = user != null && user.providerData.length >= 2;
    if (!linkedProvider || !linkedMultiProvider) {
      throw AccountLinkException(l10n.authErrorMessageNotExistsProvider);
    }

    return _currentUser?.unlink(providerId);
  }
}
