import 'package:envied/envied.dart';

part 'env.g.dart';

// ignore: avoid_classes_with_only_static_members
@Envied(path: 'scripts/env/.env')
abstract class Env {
  @EnviedField(varName: 'GOOGLE_REVERSED_CLIENT_ID', obfuscate: true)
  static final String reversedClientId = _Env.reversedClientId;
  @EnviedField(varName: 'GOOGLE_CLIENT_ID', obfuscate: true)
  static final String googleClientId = _Env.googleClientId;
  @EnviedField(varName: 'REVENUE_CAT_KEY_APPLE_STORE', obfuscate: true)
  static final String revenueCatKeyAppleStore = _Env.revenueCatKeyAppleStore;
  @EnviedField(varName: 'REVENUE_CAT_KEY_PLAY_STORE', obfuscate: true)
  static final String revenueCatKeyPlayStore = _Env.revenueCatKeyPlayStore;
  @EnviedField(varName: 'RECPTCHA_SITE_KEY', obfuscate: true)
  static final String recpthaSiteKey = _Env.recpthaSiteKey;
}
