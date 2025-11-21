import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'share_link_page_providers.g.dart';

/// 共有リンク画面の共有リンクID
@Riverpod(name: '_shareLinkIdProvider')
ShareLinkId detailPageShareLinkId(Ref ref) =>
    // 画面遷移時に `override` することを前提に利用
    throw UnimplementedError();

/// 共有リンクページ内でのみ利用するProvider
class ShareLinkPageProviders {
  static const DetailPageShareLinkIdProvider idProvider = _shareLinkIdProvider;
}
