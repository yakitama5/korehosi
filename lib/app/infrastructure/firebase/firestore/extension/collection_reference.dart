import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference usersRef() => collection('users');
  CollectionReference dusersRef() => collection('_dusers');
  CollectionReference groupsRef() => collection('groups');
  CollectionReference dgroupsRef() => collection('_dgroups');
  CollectionReference shareLinksRef() => collection('shareLinks');
  CollectionReference participantsRef(String groupId) =>
      groupsRef().doc(groupId).collection('participants');
  CollectionReference itemsRef(String groupId) =>
      groupsRef().doc(groupId).collection('items');
  CollectionReference ditemsRef(String groupId) =>
      groupsRef().doc(groupId).collection('_ditems');
  CollectionReference purchasesRef(String groupId) =>
      groupsRef().doc(groupId).collection('purchases');
  CollectionReference cpurchasesRef(String groupId) =>
      groupsRef().doc(groupId).collection('_cpurchases');
  CollectionReference dpurchasesRef(String groupId) =>
      groupsRef().doc(groupId).collection('_dpurchases');
}
