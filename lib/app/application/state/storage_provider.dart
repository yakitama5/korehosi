import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/service/storage_service.dart';

part 'storage_provider.g.dart';

@Riverpod(keepAlive: true)
Future<String?> imageUrl(ImageUrlRef ref, String? path) async {
  if (path == null || path.isEmpty) {
    return null;
  }

  return ref.read(storageServiceProvider).downloadUrl(path);
}
