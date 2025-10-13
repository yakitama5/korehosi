import 'package:envied/envied.dart';

part 'env.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 本番環境用の機密情報や接続情報を定義
/// `.env`ファイルはGit管理対象外のため、個別に設定を行う必要あり
// @Envied(path: 'packages/infrastructure/firebase/scripts/env/.env')
@Envied(path: 'scripts/env/.env')
final class ProductionEnv {
  @EnviedField(varName: 'RECPTCHA_SITE_KEY', obfuscate: true)
  static final String recpthaSiteKey = _ProductionEnv.recpthaSiteKey;
}
