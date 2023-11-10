import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/service/deep_link_service.dart';

part 'reactive_deep_link_provider.g.dart';

/// ディープリンク(購読)
@riverpod
Stream<Uri> reactiveDeepLink(ReactiveDeepLinkRef ref) =>
    ref.read(deepLinkServiceProvider).fetchDynamicLink();
