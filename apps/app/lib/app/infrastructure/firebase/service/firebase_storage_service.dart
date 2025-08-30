import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/service/storage_service.dart';
import '../storage/state/firebase_storage.dart';

/// Firebaseを利用したサービスの実装
class FirebaseStorageService implements StorageService {
  const FirebaseStorageService(this.ref);

  final Ref ref;

  @override
  Future<String> downloadUrl(String path) {
    final storage = ref.read(firebaseStorageProvider);
    final fileRef = storage.ref(path);
    return fileRef.getDownloadURL();
  }

  @override
  Future<String> uploadImage(String path, Uint8List uint8List) async {
    // 画像参照を取得
    final storage = ref.read(firebaseStorageProvider);
    final imageRef = storage.ref(path);

    // メタデータの定義
    // TODO(yakitama5): `contentType`を修正しないといけない
    final metadeta = SettableMetadata(contentType: 'image/png');

    // Webを考慮し `putData`を利用
    // Note: https://stackoverflow.com/questions/58459483/unsupported-operation-platform-operatingsystem
    await imageRef.putData(uint8List, metadeta);

    // パスを返却して処理終了
    return imageRef.fullPath;
  }
}
