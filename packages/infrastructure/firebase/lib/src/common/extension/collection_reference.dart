import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

/// Firestoreのコレクションを利用するための拡張
/// 複数定義することは無いが、コレクション名を一覧化するためにExtensionとして定義
extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference usersRef() => collection('users');
  CollectionReference dusersRef() => collection('_dusers');
  CollectionReference groupsRef() => collection('groups');
  CollectionReference dgroupsRef() => collection('_dgroups');
  CollectionReference shareLinksRef() => collection('shareLinks');
  CollectionReference participantsRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('participants');
  CollectionReference itemsRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('items');
  CollectionReference ditemsRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('_ditems');
  CollectionReference purchasesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('purchases');
  CollectionReference cpurchasesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('_cpurchases');
  CollectionReference dpurchasesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('_dpurchases');
  CollectionReference messagesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('messages');
  CollectionReference dmessagesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('_dmessages');
  CollectionReference fcmTokensRef(UserId userId) =>
      usersRef().doc(userId.value).collection('fcmTokens');
  CollectionReference wanterNamesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('wanterNames');
  CollectionReference buyerNamesRef(GroupId groupId) =>
      groupsRef().doc(groupId.value).collection('buyerNames');
}
