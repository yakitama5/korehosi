import 'dart:io' as io;

import 'package:cores_domain/app_info.dart';
import 'package:cores_domain/device_info.dart';
import 'package:cores_domain/group.dart';
import 'package:cores_domain/item.dart';
import 'package:cores_domain/notification.dart';
import 'package:cores_domain/user.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/app/infrastructure/branch/service/branch_deep_link_service.dart';
import 'package:flutter_app/app/infrastructure/firebase/messaging/state/fcm_config_provider.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import 'app/application/config/app_config.dart';
import 'app/application/model/flavor.dart';
import 'app/application/state/initial_location_provider.dart';
import 'app/domain/service/analytics_service.dart';
import 'app/domain/service/cached_service.dart';
import 'app/domain/service/config_service.dart';
import 'app/domain/service/deep_link_service.dart';
import 'app/domain/service/storage_service.dart';
import 'app/infrastructure/device_info_plus/service/device_info_plus_device_info_service.dart';
import 'app/infrastructure/firebase/app_check/config/app_check_config.dart';
import 'app/infrastructure/firebase/repository/firebase_group_repository.dart';
import 'app/infrastructure/firebase/repository/firebase_item_repository.dart';
import 'app/infrastructure/firebase/repository/firebase_notification_token_repository.dart';
import 'app/infrastructure/firebase/repository/firebase_purchase_repository.dart';
import 'app/infrastructure/firebase/repository/firebase_user_repository.dart';
import 'app/infrastructure/firebase/service/firebase_analytics_service.dart';
import 'app/infrastructure/firebase/service/firebase_config_service.dart';
import 'app/infrastructure/firebase/service/firebase_messaging_messaging_service.dart';
import 'app/infrastructure/firebase/service/firebase_storage_service.dart';
import 'app/infrastructure/package_info_plus/service/package_info_plus_app_info_service.dart';
import 'app/infrastructure/revenue_cat/config/revenue_cat_config.dart';
import 'app/infrastructure/revenue_cat/service/revenue_cat_app_in_purchase_service.dart';
import 'app/infrastructure/shared_preference/service/shared_preference_cached_service.dart';
import 'app/presentation/app.dart';
import 'firebase_options.dart';
import 'firebase_options_dev.dart' as dev;

void main() async {
  // Flutter Initialize
  WidgetsFlutterBinding.ensureInitialized();

  // slang
  LocaleSettings.useDeviceLocale();

  // 画面の向きを強制
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = switch (appConfig.flavor) {
    Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  // Initialize Firebase
  await Firebase.initializeApp(options: firebaseOptions);

  // FCM Config
  await FCMConfig.instance.init(
    defaultAndroidForegroundIcon: '@mipmap/ic_launcher',
    defaultAndroidChannel: const AndroidNotificationChannel(
      'high_importance_channel',
      'これほしい！からのお知らせ',
      importance: Importance.high,
      sound: RawResourceAndroidNotificationSound('notification'),
    ),
  );

  // App Check の初期化
  await FirebaseAppCheck.instance.activate(
    androidProvider: switch (appConfig.flavor) {
      Flavor.prod => AndroidProvider.playIntegrity,
      Flavor.dev => AndroidProvider.debug,
    },
    appleProvider: switch (appConfig.flavor) {
      Flavor.prod => AppleProvider.deviceCheck,
      Flavor.dev => AppleProvider.debug,
    },
    webProvider: ReCaptchaV3Provider(recpthaSiteKey),
  );

  // RevenueCat
  await initPlatformState();

  // branch (deep link)
  await FlutterBranchSdk.init(
    enableLogging: true,
    branchAttributionLevel: BranchAttributionLevel.FULL,
  );
  FlutterBranchSdk.setConsumerProtectionAttributionLevel(
    BranchAttributionLevel.FULL,
  );

  // WebのURLから "#" を削除
  usePathUrlStrategy();

  // Firebase Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          // 初期ロケーションの設定
          initialLocationProvider.overrideWith((ref) => null),

          // インフラ層のDI
          // Firebase
          ...await initializeFCMConfig(firebaseOptions),
          userRepositoryProvider.overrideWith(FirebaseUserRepository.new),
          groupRepositoryProvider.overrideWith(FirebaseGroupRepository.new),
          itemRepositoryProvider.overrideWith(FirebaseItemRepository.new),
          purchaseRepositoryProvider.overrideWith(
            FirebasePurchaseRepository.new,
          ),
          storageServiceProvider.overrideWith(FirebaseStorageService.new),
          configServiceProvider.overrideWith(FirebaseConfigService.new),
          deepLinkServiceProvider.overrideWith(BranchDeepLinkService.new),
          analyticsServiceProvider.overrideWith(FirebaseAnalyticsService.new),
          messagingServiceProvider.overrideWith(
            FirebaseMessagingMessagingService.new,
          ),
          notificationTokenRepositoryProvider.overrideWith(
            FirebaseNotificationTokenRepository.new,
          ),
          // SharedPreference
          cachedServiceProvider.overrideWith(SharedPreferenceCachedService.new),
          // `package_info_plus`
          appInfoServiceProvider.overrideWith(
            PackageInfoPlusAppInfoService.new,
          ),
          // `device_info_plus`
          deviceInfoServiceProvider.overrideWith(
            DeviceInfoPlusDeviceInfoService.new,
          ),
          // RevenueCat
          appInPurchaseServiceProvider.overrideWith(
            RevenueCatAppInPurchaseService.new,
          ),
        ],
        child: const App(),
      ),
    ),
  );
}

Future<void> initPlatformState() async {
  // Web版は課金は未対応
  if (kIsWeb) {
    return;
  }

  // 開発環境はスキップ
  switch (appConfig.flavor) {
    case Flavor.dev:
      return;
    case Flavor.prod:
    // do nothing
  }

  late final PurchasesConfiguration configuration;
  if (io.Platform.isAndroid) {
    configuration = PurchasesConfiguration(revenueCatPlayStoreKey);
  } else if (io.Platform.isIOS) {
    configuration = PurchasesConfiguration(revenueCatAppStoreKey);
  } else {
    return;
  }
  await Purchases.configure(configuration);
}
