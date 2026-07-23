import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/group/repository/firebase_group_repository.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

void main() {
  test('leave transaction payload uses Firestore string values', () {
    expect(firestoreLeaveUserValues(UserId('user')), ['user']);
    expect(firestoreLeaveGroupValues(GroupId('group')), ['group']);
  });
}
