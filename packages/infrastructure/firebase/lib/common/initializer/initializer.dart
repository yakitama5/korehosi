import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:infrastructure_firebase/common/config/firebase_options.dart';
import 'package:infrastructure_firebase/common/config/firebase_options_dev.dart'
    as dev;
import 'package:packages_domain/core.dart';

final class FirebaseInitializer {
  FirebaseInitializer._();

  static Future<void> initialize(Flavor flavor) async {
    // Flavor に応じた FirebaseOptions を準備する
    final firebaseOptions = switch (flavor) {
      Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
      Flavor.prd => DefaultFirebaseOptions.currentPlatform,
    };

    await Firebase.initializeApp(options: firebaseOptions);

    // Firebase Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
