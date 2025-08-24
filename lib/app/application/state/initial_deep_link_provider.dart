import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/service/deep_link_service.dart';

part 'initial_deep_link_provider.g.dart';

/// 初回起動時のディープリンク
@riverpod
Future<Uri?> initialDeepLink(Ref ref) =>
    ref.read(deepLinkServiceProvider).fetchInitialLink();
