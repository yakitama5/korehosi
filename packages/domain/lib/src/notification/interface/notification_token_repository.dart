// ignore_for_file: one_member_abstracts

import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_token_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
NotificationTokenRepository notificationTokenRepository(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// トークンを管理するリポジトリ
abstract class NotificationTokenRepository {
  /// トークンを設定
  Future<void> set({required UserId userId, required String token});
}
