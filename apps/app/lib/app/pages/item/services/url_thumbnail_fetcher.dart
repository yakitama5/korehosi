import 'package:metadata_fetch/metadata_fetch.dart';

typedef MetadataExtractor = Future<Metadata?> Function(String url);

Future<String?> fetchUrlThumbnail(
  String url, {
  MetadataExtractor extract = MetadataFetch.extract,
}) async {
  try {
    final imageUrl = (await extract(url))?.image?.trim();
    return imageUrl?.isEmpty == false ? imageUrl : null;
  } on Exception {
    // URLの保存を妨げないよう、メタデータ取得エラーは画像なしとして扱う。
    return null;
  }
}
