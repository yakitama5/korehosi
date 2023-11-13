import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../config/google_sing_in_config.dart';

part 'google_sign_in.g.dart';

/// Google Sign In
/// テスト時にDIすることを考慮して、Providerとして定義
@riverpod
GoogleSignIn googleSignIn(GoogleSignInRef ref) =>
    GoogleSignIn(clientId: googleSigninClientId);
