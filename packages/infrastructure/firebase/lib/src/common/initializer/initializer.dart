import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:infrastructure_firebase/env/env.dart';
import 'package:infrastructure_firebase/env/env.dev.dart';
import 'package:infrastructure_firebase/src/common/config/firebase_options.dart';
import 'package:infrastructure_firebase/src/common/config/firebase_options_dev.dart'
    as dev;
import 'package:infrastructure_firebase/src/common/state/background_handler.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/notification.dart';

typedef FirebaseInitializedValues = ({NotificationMessage? initialMessage});

final class FirebaseInitializer {
  FirebaseInitializer._();

  static const _useFirebaseEmulators = bool.fromEnvironment(
    'useFirebaseEmulators',
  );
  static const _firebaseEmulatorHostOverride = String.fromEnvironment(
    'firebaseEmulatorHost',
  );

  static Future<FirebaseInitializedValues> initialize(Flavor flavor) async {
    // Flavor に応じた FirebaseOptions を準備する
    final firebaseOptions = switch (flavor) {
      Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
      Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    };

    // Firebase core
    await Firebase.initializeApp(options: firebaseOptions);
    if (_useFirebaseEmulators) {
      await _connectToFirebaseEmulators();
    }

    // App Check
    // 公開しているWebサイトのサイトキー
    final recaptchaSiteKey = switch (flavor) {
      Flavor.prod => ProductionEnv.recaptchaSiteKey,
      Flavor.dev => DevEnv.recaptchaSiteKey,
    };
    await FirebaseAppCheck.instance.activate(
      providerAndroid: switch (flavor) {
        Flavor.prod => const AndroidPlayIntegrityProvider(),
        Flavor.dev => const AndroidDebugProvider(),
      },
      providerApple: switch (flavor) {
        Flavor.prod => const AppleDeviceCheckProvider(),
        Flavor.dev => const AppleDebugProvider(),
      },
      providerWeb: ReCaptchaV3Provider(recaptchaSiteKey),
    );

    // FCM Config
    await FCMConfig.instance.init(
      options: firebaseOptions,
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

    // GoogleSignIn
    await GoogleSignIn.instance.initialize();

    // InitialMessage
    final remoteMessage = await FCMConfig.instance.getInitialMessage();
    return (initialMessage: remoteMessage?.toDomainModel());
  }

  static String get _firebaseEmulatorHost {
    if (_firebaseEmulatorHostOverride.isNotEmpty) {
      return _firebaseEmulatorHostOverride;
    }
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      return '10.0.2.2';
    }
    return 'localhost';
  }

  static Future<void> _connectToFirebaseEmulators() async {
    final host = _firebaseEmulatorHost;
    await FirebaseAuth.instance.useAuthEmulator(host, 9099);
    FirebaseFirestore.instance.useFirestoreEmulator(host, 8080);
    FirebaseFunctions.instance.useFunctionsEmulator(host, 5001);
    await FirebaseStorage.instance.useStorageEmulator(host, 9199);
  }
}
