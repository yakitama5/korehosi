import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
StorageService storageService(Ref ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// ストレージ(ファイル,画像)に関するサービス
abstract class StorageService {
  /// ダウンロードURLを生成する
  Future<String> downloadUrl(String path);

  /// 画像をアップロードする
  Future<String> uploadImage(String path, Uint8List uint8List);
}
