import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_provider.g.dart';

/// 画像URL
@Riverpod(keepAlive: true)
Future<String?> imageUrl(Ref ref, String? path) async {
  if (path == null || path.isEmpty) {
    return null;
  }

  return ref.read(storageServiceProvider).downloadUrl(path);
}
