import 'package:infrastructure_firebase/src/common/service/firebase_messaging_messaging_service.dart';
import 'package:packages_domain/notification.dart';

/// Auth/Firestore emulator tests cannot obtain APNs or FCM tokens.
/// Keep inherited message-document writes connected to the Firestore emulator.
class FirebaseEmulatorMessagingService
    extends FirebaseMessagingMessagingService {
  const FirebaseEmulatorMessagingService(super.ref);

  @override
  Future<String?> getToken() async => null;

  @override
  Future<NotificationPermission> requestPermission() async =>
      NotificationPermission.denied;

  @override
  Future<NotificationMessage?> getInitialMessage() async => null;

  @override
  Stream<NotificationMessage> onMessageOpenedApp() => const Stream.empty();
}
