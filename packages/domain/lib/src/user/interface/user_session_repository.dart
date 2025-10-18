import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_session_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
UserSessionRepository userSessionRepository(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// ユーザーセッションに関するサービス
abstract class UserSessionRepository {
  /// キャッシュ上に保存された現在のグループIDを取得
  String? fetchCurrentGroupId();

  /// キャッシュ上に現在のグループIDを設定
  Future<void> setCurrentGroupId({required String groupId});

  /// キャッシュ上に現在のグループIDを削除
  Future<void> removeCurrentGroupId();

  /// 前回のトークン更新タイムスタンプを取得
  DateTime? fetchTokenTimestamp({required String uid});

  /// タイムスタンプの更新を行う
  Future<void> updateTokenTimestamp({
    required String uid,
    required DateTime dateTime,
  });

  /// タイムスタンプの削除を行う
  Future<void> removeTokenTimestamp({
    required String uid,
    required DateTime dateTime,
  });

  // ほしいもの一覧画面の表示形式を取得
  ViewLayout? fetchItemsPageViewLayout();

  /// ほしいもの一覧画面の表示形式を更新
  Future<void> updateItemsPageViewLayout({required ViewLayout viewLayout});
}
