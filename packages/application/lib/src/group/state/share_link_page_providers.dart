import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'share_link_page_providers.g.dart';

/// 共有リンク画面の共有リンクID
@riverpod
ShareLinkId _shareLinkId(Ref ref) =>
    // 画面遷移時に `override` することを前提に利用
    throw UnimplementedError();

// ignore: avoid_classes_with_only_static_members
/// 共有リンクページ内でのみ利用するProvider
class ShareLinkPageProviders {
  static final idProvider = _shareLinkIdProvider;
}
