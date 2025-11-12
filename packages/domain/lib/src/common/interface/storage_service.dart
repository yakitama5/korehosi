import 'package:cross_file/cross_file.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_service.g.dart';

extension type ImageId(String value) {}

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
StorageService storageService(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// ストレージ(ファイル,画像)に関するサービス
abstract class StorageService {
  /// ダウンロードURLを生成する
  Future<String> downloadUrl(ImageId id);

  /// 画像をダウンロードするを生成する
  Future<XFile> downloadImage(ImageId id);

  /// 画像をアップロードする
  Future<ImageId> uploadImage(ImageId id, XFile xfile);
}
