import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/notification_token.dart';

part 'notification_token_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
NotificationTokenRepository notificationTokenRepository(
  NotificationTokenRepositoryRef ref,
) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// トークンを管理するリポジトリ
abstract class NotificationTokenRepository {
  /// ユーザーのトークン一覧を取得
  Stream<List<NotificationToken>> fetchByUid({required String userId});

  /// トークンを取得
  /// (一意指定)
  Stream<NotificationToken?> fetchByUidAndToken({
    required String userId,
    required String token,
  });

  /// トークンを追加
  Future<NotificationToken> add({
    required String userId,
    required String token,
  });

  /// トークンを更新
  Future<void> update({
    required String userId,
    required String token,
  });

  /// トークンを削除
  Future<void> delete({
    required String userId,
    required String token,
  });
}
