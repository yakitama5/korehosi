import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
AnalyticsService analyticsService(AnalyticsServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// 分析に関するサービス
abstract class AnalyticsService {
  /// 画面遷移
  Future<void> screenView({required String screenName});

  /// サインアップ
  Future<void> signedUp();

  /// サインイン
  Future<void> signedIn();
}
