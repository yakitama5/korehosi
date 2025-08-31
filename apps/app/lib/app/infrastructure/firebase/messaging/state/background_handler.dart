import 'package:cores_core/util.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/app/application/config/app_config.dart';
import 'package:flutter_app/app/application/model/flavor.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/firebase_options_dev.dart' as dev;

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = switch (appConfig.flavor) {
    Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  await Firebase.initializeApp(options: firebaseOptions);
  logger.d('TerminatedまたはBackgroundで通知受信: ${message.notification?.title}');
}
