import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:infrastructure_firebase/src/common/config/firebase_options.dart';
import 'package:infrastructure_firebase/src/common/config/firebase_options_dev.dart'
    as dev;
import 'package:infrastructure_firebase/src/common/state/background_handler.dart';
import 'package:packages_domain/core.dart';

final class FirebaseInitializer {
  FirebaseInitializer._();

  static Future<void> initialize(Flavor flavor, String recpthaSiteKey) async {
    // Flavor に応じた FirebaseOptions を準備する
    final firebaseOptions = switch (flavor) {
      Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
      Flavor.prd => DefaultFirebaseOptions.currentPlatform,
    };

    // Firebase core
    await Firebase.initializeApp(options: firebaseOptions);

    // App Check
    await FirebaseAppCheck.instance.activate(
      androidProvider: switch (flavor) {
        Flavor.prd => AndroidProvider.playIntegrity,
        Flavor.dev => AndroidProvider.debug,
      },
      appleProvider: switch (flavor) {
        Flavor.prd => AppleProvider.deviceCheck,
        Flavor.dev => AppleProvider.debug,
      },
      webProvider: ReCaptchaV3Provider(recpthaSiteKey),
    );

    // FCM Config
    FCMConfig.instance.init(
      options: firebaseOptions,
      defaultAndroidForegroundIcon: '@mipmap/ic_launcher',
      onBackgroundMessage: firebaseMessagingBackgroundHandler,
      defaultAndroidChannel: const AndroidNotificationChannel(
        'high_importance_channel',
        'これほしい！からのお知らせ',
        importance: Importance.high,
      ),
      displayInForeground: (notification) {
        return true;
      },
    );

    // Firebase Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
