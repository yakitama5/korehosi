import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_token_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
NotificationTokenRepository notificationTokenRepository(
  NotificationTokenRepositoryRef ref,
) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

// ignore: one_member_abstracts
/// トークンを管理するリポジトリ
abstract class NotificationTokenRepository {
  /// トークンを設定
  Future<void> set({
    required String userId,
    required String token,
  });
}
