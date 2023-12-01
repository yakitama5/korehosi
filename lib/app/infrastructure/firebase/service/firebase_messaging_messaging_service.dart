import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/service/messaging_service.dart';
import '../messaging/state/firebase_messaging.dart';

/// Firebaseを利用したサービスの実装
class FirebaseMessagingMessagingService implements MessagingService {
  const FirebaseMessagingMessagingService(this.ref);

  final Ref ref;

  @override
  Future<String?> getToken() => ref.read(firebaseMessagingProvider).getToken();

  @override
  Future<void> requestPermission() =>
      ref.read(firebaseMessagingProvider).requestPermission();
}
