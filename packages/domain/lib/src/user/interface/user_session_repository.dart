import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
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
  GroupId? fetchCurrentGroupId();

  /// キャッシュ上に現在のグループIDを設定
  Future<void> setCurrentGroupId({required GroupId groupId});

  /// キャッシュ上に現在のグループIDを削除
  Future<void> removeCurrentGroupId();

  /// 前回のトークン更新タイムスタンプを取得
  DateTime? fetchTokenTimestamp({required UserId userId});

  /// タイムスタンプの更新を行う
  Future<void> updateTokenTimestamp({
    required UserId userId,
    required DateTime dateTime,
  });

  /// タイムスタンプの削除を行う
  Future<void> removeTokenTimestamp({
    required UserId userId,
    required DateTime dateTime,
  });

  // ほしいもの一覧画面の表示形式を取得
  ViewLayout? fetchItemsPageViewLayout();

  /// ほしいもの一覧画面の表示形式を更新
  Future<void> updateItemsPageViewLayout({required ViewLayout viewLayout});
}
