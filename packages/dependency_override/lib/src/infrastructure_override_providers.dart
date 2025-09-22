import 'package:infrastructure_branch/core.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:infrastructure_firebase/group.dart';
import 'package:infrastructure_firebase/item.dart';
import 'package:infrastructure_firebase/notification.dart';
import 'package:infrastructure_firebase/user.dart';
import 'package:packages_domain/core.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod/riverpod.dart';

Future<List<Override>> initializeInfrastructureProviders() async {
  return <Override>[
    // SharedPreferences
    await initializeSharedPreferencesProvider(),
    // themeRepositoryProvider.overrideWith(SharedPreferencesThemeRepository.new),
    // goodsConfigRepositoryProvider.overrideWith(
    //   SharedPreferencesGoodsConfigRepository.new,
    // ),

    // Firebase
    userRepositoryProvider.overrideWith(FirebaseUserRepository.new),
    groupRepositoryProvider.overrideWith(FirebaseGroupRepository.new),
    itemRepositoryProvider.overrideWith(FirebaseItemRepository.new),
    purchaseRepositoryProvider.overrideWith(FirebasePurchaseRepository.new),
    storageServiceProvider.overrideWith(FirebaseStorageService.new),
    configServiceProvider.overrideWith(FirebaseConfigService.new),
    analyticsServiceProvider.overrideWith(FirebaseAnalyticsService.new),
    messagingServiceProvider.overrideWith(
      FirebaseMessagingMessagingService.new,
    ),
    notificationTokenRepositoryProvider.overrideWith(
      FirebaseNotificationTokenRepository.new,
    ),

    // Branch
    deepLinkServiceProvider.overrideWith(BranchDeepLinkService.new),

    // Mock
    // goodsRepositoryProvider.overrideWith(MockGoodsRepository.new),
  ];
}
