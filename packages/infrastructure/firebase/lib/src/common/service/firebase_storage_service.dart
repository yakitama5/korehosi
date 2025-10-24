import 'package:cross_file/cross_file.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/state/firebase_storage_provider.dart';
import 'package:packages_domain/common.dart';

/// Firebaseを利用したサービスの実装
class FirebaseStorageService implements StorageService {
  const FirebaseStorageService(this.ref);

  final Ref ref;

  @override
  Future<String> downloadUrl(ImageId id) {
    final storage = ref.read(firebaseStorageProvider);
    final fileRef = storage.ref(id.value);
    return fileRef.getDownloadURL();
  }

  @override
  Future<ImageId> uploadImage(ImageId id, XFile xfile) async {
    // 画像参照を取得
    final storage = ref.read(firebaseStorageProvider);
    final imageRef = storage.ref(id.value);

    // メタデータの定義
    // TODO(yakitama5): `contentType`を修正しないといけない
    final imageData = await xfile.readAsBytes();
    final metadeta = SettableMetadata(contentType: 'image/png');

    // Webを考慮し `putData`を利用
    // Note: https://stackoverflow.com/questions/58459483/unsupported-operation-platform-operatingsystem
    await imageRef.putData(imageData, metadeta);

    // パスを返却して処理終了
    return ImageId(imageRef.fullPath);
  }

  @override
  Future<XFile> downloadImage(ImageId id) async {
    final storage = ref.read(firebaseStorageProvider);
    final fileRef = storage.ref(id.value);
    final imageData = await fileRef.getData();

    if (imageData == null) {
      // TODO(yakitama5): エラー定義
      throw Exception();
    }

    return XFile.fromData(imageData);
  }
}
