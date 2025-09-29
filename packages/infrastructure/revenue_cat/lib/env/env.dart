import 'package:envied/envied.dart';

part 'env.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 本番環境用の機密情報や接続情報を定義
/// `.env`ファイルはGit管理対象外のため、個別に設定を行う必要あり
@Envied(path: 'scripts/env/.env')
abstract class ProductionEnv {
  @EnviedField(varName: 'REVENUE_CAT_KEY_APPLE_STORE', obfuscate: true)
  static final String revenueCatKeyAppleStore =
      _ProductionEnv.revenueCatKeyAppleStore;
  @EnviedField(varName: 'REVENUE_CAT_KEY_PLAY_STORE', obfuscate: true)
  static final String revenueCatKeyPlayStore =
      _ProductionEnv.revenueCatKeyPlayStore;
}
