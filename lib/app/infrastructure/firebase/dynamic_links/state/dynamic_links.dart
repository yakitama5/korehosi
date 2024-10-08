// TODO(yakitama5): FirebaseDynamicLinksからの移行
// ignore_for_file: deprecated_member_use

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dynamic_links.g.dart';

/// Firebase Dynamic Links
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
FirebaseDynamicLinks dynamicLinks(DynamicLinksRef ref) =>
    FirebaseDynamicLinks.instance;
