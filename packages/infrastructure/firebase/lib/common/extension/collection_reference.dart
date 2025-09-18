import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestoreのコレクションを利用するための拡張
/// 複数定義することは無いが、コレクション名を一覧化するためにExtensionとして定義
extension FirebaseFirestoreX on FirebaseFirestore {
  /// ユーザーコレクションの参照を取得する
  CollectionReference usersRef() => collection('users');
  CollectionReference dusersRef() => collection('_dusers');

  /// 投稿コレクションの参照を取得する
  CollectionReference postsRef() => collection('posts');
  CollectionReference dpostsRef() => collection('_dposts');
  CollectionReference myPostsRef({required String userId}) =>
      usersRef().doc(userId).collection('posts');
  CollectionReference myDpostsRef({required String userId}) =>
      usersRef().doc(userId).collection('_dposts');

  /// 選択肢コレクションの参照を取得する
  CollectionReference choicesRef({required String postId}) =>
      postsRef().doc(postId).collection('choices');
  CollectionReference dchoicesRef({required String postId}) =>
      dpostsRef().doc(postId).collection('_dchoices');
  CollectionReference myChoicesRef({
    required String userId,
    required String postId,
  }) => myPostsRef(userId: userId).doc(postId).collection('choices');
  CollectionReference myDchoicesRef({
    required String userId,
    required String postId,
  }) => myDpostsRef(userId: userId).doc(postId).collection('_dchoices');

  /// 投票コレクションの参照を取得する
  CollectionReference votesRef({required String postId}) =>
      postsRef().doc(postId).collection('votes');
  CollectionReference dvotesRef({required String postId}) =>
      dpostsRef().doc(postId).collection('_dvotes');
}
