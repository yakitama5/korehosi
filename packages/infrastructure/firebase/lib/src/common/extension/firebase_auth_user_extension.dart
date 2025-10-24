import 'package:firebase_auth/firebase_auth.dart';
import 'package:packages_domain/user.dart' show AuthStatus, UserId;

/// FirebaseAuthの認証ユーザー拡張
extension FirebaseAuthUserX on User {
  /// Googleアカウント連携済か否か
  bool get linkedGoogle => providerData
      .where((u) => u.providerId == GoogleAuthProvider.PROVIDER_ID)
      .isNotEmpty;

  /// Appleアカウント連携済か否か
  bool get linkedApple => providerData
      .where((u) => u.providerId == AppleAuthProvider.PROVIDER_ID)
      .isNotEmpty;

  /// ドメイン層への変換を記載
  AuthStatus get authStatus => AuthStatus(
    userId: UserId(uid),
    isAnonymous: isAnonymous,
    linkedGoogle: linkedGoogle,
    linkedApple: linkedApple,
  );
}
