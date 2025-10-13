import 'package:envied/envied.dart';

part 'env.dev.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 開発環境用の機密情報や接続情報を定義
/// `.env.dev`ファイルはGit管理対象外のため、個別に設定を行う必要あり
/// 開発環境ではRevenue Catの機能は無効化しているため、
/// Google Sign In の設定ファイルのみ設定で問題ない
@Envied(path: 'scripts/env/.env')
final class DevEnv {
  @EnviedField(varName: 'RECPTCHA_SITE_KEY', obfuscate: true)
  static final String recpthaSiteKey = _DevEnv.recpthaSiteKey;
}
