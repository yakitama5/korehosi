import 'package:infrastructure_branch/core.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:infrastructure_firebase/group.dart';
import 'package:infrastructure_firebase/item.dart';
import 'package:infrastructure_firebase/notification.dart';
import 'package:infrastructure_firebase/user.dart';
import 'package:infrastructure_revenue_cat/common.dart';
import 'package:infrastructure_shared_preferences/init.dart';
import 'package:infrastructure_shared_preferences/user.dart';
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
    userSessionRepositoryProvider.overrideWith(
      SharedPreferenceUserSessionRepository.new,
    ),
    // themeRepositoryProvider.overrideWith(SharedPreferencesThemeRepository.new),

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
    appVersionRepositoryProvider.overrideWith(FirebaseAppVersionRepository.new),
    appMaintenanceRepositoryProvider.overrideWith(
      FirebaseAppMaintenanceRepository.new,
    ),

    // Branch
    deepLinkServiceProvider.overrideWith(BranchDeepLinkService.new),

    // RevenueCat
    appInPurchaseServiceProvider.overrideWith(
      RevenueCatAppInPurchaseService.new,
    ),

    // Mock
    // goodsRepositoryProvider.overrideWith(MockGoodsRepository.new),
  ];
}
