import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dynamic_links.g.dart';

@Riverpod(keepAlive: true)
FirebaseDynamicLinks dynamicLinks(DynamicLinksRef ref) =>
    FirebaseDynamicLinks.instance;
