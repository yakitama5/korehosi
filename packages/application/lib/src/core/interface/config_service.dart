import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
ConfigService configService(Ref ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// アプリ外に保存された設定を管理するサービス
abstract class ConfigService {
  /// 欲しい物の登録数上限を取得
  Future<int> fetchMaxItemCount();

  /// グループの参加数上限を取得
  Future<int> fetchMaxGroupCount();

  /// アプリの必須バージョンを取得
  Future<String> fetchForceUpdateVersion();
}
