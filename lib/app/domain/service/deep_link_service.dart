import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deep_link_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
DeepLinkService deepLinkService(DeepLinkServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

abstract class DeepLinkService {
  /// 初期リンクを取得する
  Future<Uri?> fetchInitialLink();

  /// 動的にリンクを購読する
  Stream<Uri> fetchDynamicLink();

  /// リンクを生成する
  Future<String> buildLink({required Uri uri});
}
