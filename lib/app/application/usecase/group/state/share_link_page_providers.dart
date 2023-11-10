import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'share_link_page_providers.g.dart';

/// 共有リンク画面の共有リンクID
@riverpod
String _shareLinkId(_ShareLinkIdRef ref) =>
// 画面遷移時に `override` することを前提に利用
    throw UnimplementedError();

// ignore: avoid_classes_with_only_static_members
class ShareLinkPageProviders {
  static final idProvider = _shareLinkIdProvider;
}
