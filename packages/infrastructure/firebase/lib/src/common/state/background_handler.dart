import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:infrastructure_firebase/src/common/config/firebase_options.dart';
import 'package:infrastructure_firebase/src/common/config/firebase_options_dev.dart'
    as dev;
import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  /**
   * FCM Configの制約で無名関数ではエラーとなってしまうため、引数の制約がある
   * そのため、FlavorやFirebaseOptionsの取得を独自に行う
   */
  //
  // Flavor に応じた FirebaseOptions を準備する
  final flavor = Flavor.values.byName(const String.fromEnvironment('flavor'));
  final firebaseOptions = switch (flavor) {
    Flavor.prd => DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  await Firebase.initializeApp(options: firebaseOptions);
  logger.d('TerminatedまたはBackgroundで通知受信: ${message.notification?.title}');
}
