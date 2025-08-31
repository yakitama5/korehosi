import 'package:cores_domain/user.dart' hide User;
import 'package:firebase_auth/firebase_auth.dart';

/// FirebaseAuth の 認証ユーザー拡張
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
    uid: uid,
    isAnonymous: isAnonymous,
    linkedGoogle: linkedGoogle,
    linkedApple: linkedApple,
  );
}
