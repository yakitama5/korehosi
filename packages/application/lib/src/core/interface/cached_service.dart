import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cached_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
CachedService cachedService(Ref ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// キャッシュ(ローカルストレージ)に関するサービス
abstract class CachedService {
  /// キャッシュ上に保存された現在のグループIDを取得
  Future<String?> fetchCurrentGroupId();

  /// キャッシュ上に現在のグループIDを設定
  Future<bool> setCurrentGroupId({
    required String groupId,
  });

  /// キャッシュ上に現在のグループIDを削除
  Future<bool> removeCurrentGroupId();

  /// 前回のトークン更新タイムスタンプを取得
  Future<DateTime?> fetchTokenTimestamp({
    required String uid,
    required String token,
  });

  /// タイムスタンプの更新を行う
  Future<bool> updateTokenTimestamp({
    required String uid,
    required String token,
  });

  /// タイムスタンプの削除を行う
  Future<bool> removeTokenTimestamp({
    required String uid,
    required String token,
  });
}
