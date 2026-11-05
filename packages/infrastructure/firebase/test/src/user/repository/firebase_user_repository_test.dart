import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:infrastructure_firebase/src/common/state/firebase_auth_provider.dart';
import 'package:infrastructure_firebase/src/common/state/google_sign_in_provider.dart';
import 'package:infrastructure_firebase/src/user/repository/firebase_user_repository.dart';
import 'package:packages_domain/common.dart';
import 'package:riverpod/riverpod.dart';

final Provider<FirebaseUserRepository> _repositoryProvider = Provider(
  FirebaseUserRepository.new,
);

void main() {
  test(
    'maps asynchronous Google credential sign-in failures to business errors',
    () async {
      var signInCount = 0;
      final container = ProviderContainer(
        overrides: [
          googleSignInProvider.overrideWithValue(const _GoogleSignIn()),
          firebaseAuthProvider.overrideWithValue(
            _FirebaseAuth(
              signIn: (_) async {
                signInCount += 1;
                await Future<void>.delayed(Duration.zero);
                throw auth.FirebaseAuthException(
                  code: 'network-request-failed',
                );
              },
            ),
          ),
        ],
      );
      addTearDown(container.dispose);

      await expectLater(
        container.read(_repositoryProvider).signInWithGoogle(),
        throwsA(_googleSignInBusinessError),
      );
      expect(signInCount, 1);
    },
  );

  test(
    'maps asynchronous Google link failures without signing in a new user',
    () async {
      var linkCount = 0;
      var signInCount = 0;
      final container = ProviderContainer(
        overrides: [
          googleSignInProvider.overrideWithValue(const _GoogleSignIn()),
          firebaseAuthProvider.overrideWithValue(
            _FirebaseAuth(
              currentUser: _User(
                link: (_) async {
                  linkCount += 1;
                  await Future<void>.delayed(Duration.zero);
                  throw auth.FirebaseAuthException(
                    code: 'credential-already-in-use',
                  );
                },
              ),
              signIn: (_) {
                signInCount += 1;
                return Future<auth.UserCredential>.error(
                  StateError('Existing accounts must use linking'),
                );
              },
            ),
          ),
        ],
      );
      addTearDown(container.dispose);

      await expectLater(
        container.read(_repositoryProvider).signInWithGoogle(),
        throwsA(_googleSignInBusinessError),
      );
      expect(linkCount, 1);
      expect(signInCount, 0);
    },
  );

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

final Matcher _googleSignInBusinessError = isA<BusinessException>().having(
  (error) => error.exceptionType,
  'exceptionType',
  BusinessExceptionType.googleSignInUnknown,
);

class _GoogleSignIn implements GoogleSignIn {
  const _GoogleSignIn();

  @override
  Future<GoogleSignInAccount> authenticate({
    List<String> scopeHint = const [],
  }) async => const _GoogleAccount();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// Accounts are created by the native SDK. Inject a token at the repository
// boundary without starting native sign-in or contacting Google.
// ignore: avoid_implementing_value_types
class _GoogleAccount implements GoogleSignInAccount {
  const _GoogleAccount();

  @override
  GoogleSignInAuthentication get authentication =>
      const GoogleSignInAuthentication(idToken: 'test-id-token');

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _FirebaseAuth implements auth.FirebaseAuth {
  const _FirebaseAuth({this.currentUser, required this.signIn});

  @override
  final auth.User? currentUser;

  final Future<auth.UserCredential> Function(auth.AuthCredential) signIn;

  @override
  Future<auth.UserCredential> signInWithCredential(
    auth.AuthCredential credential,
  ) => signIn(credential);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _User implements auth.User {
  const _User({required this.link});

  final Future<auth.UserCredential> Function(auth.AuthCredential) link;

  @override
  Future<auth.UserCredential> linkWithCredential(
    auth.AuthCredential credential,
  ) => link(credential);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
