import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/state/background_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm_config_provider.g.dart';

@riverpod
FCMConfig fcmConfig(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

Future<List<Override>> initializeFCMConfig(FirebaseOptions options) async {
  final fcmConfig = FCMConfig.instance;

  await fcmConfig.init(
    options: options,
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

  return <Override>[fcmConfigProvider.overrideWithValue(fcmConfig)];
}
