import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/config/app_config.dart';
import '../../../domain/service/deep_link_service.dart';
import '../dynamic_links/state/dynamic_links.dart';

/// Firebaseを利用したサービスの実装
class FirebaseDeepLinkService implements DeepLinkService {
  const FirebaseDeepLinkService(this.ref);

  final Ref ref;

  @override
  Future<String> buildLink({required Uri uri}) async {
    final dynamicLink = ref.read(dynamicLinksProvider);
    final link = await dynamicLink.buildShortLink(
      DynamicLinkParameters(
        link: uri,
        uriPrefix: const String.fromEnvironment('dynamicLinkUriPrefix'),
        androidParameters:
            AndroidParameters(packageName: appConfig.packageName),
        iosParameters: IOSParameters(
          bundleId: appConfig.bundleId,
          appStoreId: appConfig.appStoreId,
        ),
      ),
      shortLinkType: ShortDynamicLinkType.unguessable,
    );

    return link.shortUrl.toString();
  }

  @override
  Stream<Uri> fetchDynamicLink() =>
      ref.read(dynamicLinksProvider).onLink.map((event) => event.link);

  @override
  Future<Uri?> fetchInitialLink() async {
    final initialLink = await ref.read(dynamicLinksProvider).getInitialLink();
    return initialLink?.link;
  }
}
