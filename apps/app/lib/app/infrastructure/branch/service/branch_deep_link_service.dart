import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/core.dart' hide BusinessException;
import 'package:packages_domain/exception.dart';
import 'package:uuid/uuid.dart';

class BranchDeepLinkService implements DeepLinkService {
  const BranchDeepLinkService(this.ref);

  final Ref ref;

  @override
  Future<String> buildLink({required Uri uri}) async {
    final canonicalIdentifier = const Uuid().v4();

    final buo = BranchUniversalObject(
      canonicalIdentifier: canonicalIdentifier,
      canonicalUrl: uri.toString(),
      title: 'Flutter Branch Plugin',
      contentMetadata: BranchContentMetaData(),
    );
    final lp = BranchLinkProperties(feature: 'sharing');

    try {
      final response = await FlutterBranchSdk.getShortUrl(
        buo: buo,
        linkProperties: lp,
      );

      if (!response.success) {
        throw BusinessException('招待コードの生成に失敗しました');
      }
      logger.d('short url: ${response.result.toString()}');

      return response.result.toString();
    } on Exception catch (_) {
      throw BusinessException('招待コードの生成に失敗しました');
    }
  }

  @override
  Stream<Uri> fetchDynamicLink() {
    return FlutterBranchSdk.listSession()
        .map((data) {
          if (data.containsKey('+clicked_branch_link') &&
              data['+clicked_branch_link'] == true) {
            return Uri.tryParse(data['\$canonical_url'] as String);
          }
          return null;
        })
        .where((uri) => uri != null)
        .map((uri) => uri!);
  }

  @override
  Future<Uri?> fetchInitialLink() {
    // TODO(yakitama5): 不要か判断して元サービスから削除する
    throw UnimplementedError();
  }
}
