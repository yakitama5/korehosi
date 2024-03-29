import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_messaging.g.dart';

@Riverpod(keepAlive: true)
FirebaseMessaging firebaseMessaging(FirebaseMessagingRef ref) {
  return FirebaseMessaging.instance
    ..setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
}
