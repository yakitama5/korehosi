import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/user/repository/firebase_user_repository.dart';
import 'package:packages_domain/common.dart';

void main() {
  test('maps delete user errors to business exceptions', () {
    expect(
      deleteUserBusinessExceptionType('not-auth'),
      BusinessExceptionType.notAuth,
    );
    expect(
      deleteUserBusinessExceptionType('owns-group'),
      BusinessExceptionType.deleteUserPolicyGroupOwner,
    );
    expect(deleteUserBusinessExceptionType(null), isNull);
    expect(deleteUserBusinessExceptionType('unexpected'), isNull);
  });

  test('does not sign out when the user still owns a group', () async {
    var signOutCount = 0;

    await expectLater(
      handleDeleteUserResponse(
        data: const {'errorCode': 'owns-group'},
        signOut: () async => signOutCount += 1,
      ),
      throwsA(
        isA<BusinessException>().having(
          (error) => error.exceptionType,
          'exceptionType',
          BusinessExceptionType.deleteUserPolicyGroupOwner,
        ),
      ),
    );
    expect(signOutCount, 0);
  });

  test('signs out only after a successful deletion response', () async {
    var signOutCount = 0;

    await handleDeleteUserResponse(
      data: const {},
      signOut: () async => signOutCount += 1,
    );

    expect(signOutCount, 1);
  });

  test('does not sign out for an unknown deletion response', () async {
    var signOutCount = 0;

    await expectLater(
      handleDeleteUserResponse(
        data: const {'errorCode': 'unexpected'},
        signOut: () async => signOutCount += 1,
      ),
      throwsA(isA<UnknownException>()),
    );
    expect(signOutCount, 0);
  });
}
