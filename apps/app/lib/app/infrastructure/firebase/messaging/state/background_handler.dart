import 'package:family_wish_list/app/application/config/app_config.dart';
import 'package:family_wish_list/app/application/model/flavor.dart';
import 'package:family_wish_list/app/utils/logger.dart';
import 'package:family_wish_list/firebase_options.dart';
import 'package:family_wish_list/firebase_options_dev.dart' as dev;
import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_core/firebase_core.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = switch (appConfig.flavor) {
    Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  await Firebase.initializeApp(
    options: firebaseOptions,
  );
  logger.d('TerminatedまたはBackgroundで通知受信: ${message.notification?.title}');
}
