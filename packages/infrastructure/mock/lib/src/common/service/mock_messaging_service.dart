import 'package:packages_domain/group.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';

class MockMessagingService extends MessagingService {
  @override
  Future<NotificationMessage?> getInitialMessage() async {
    return const NotificationMessage(path: '/items/item/PFe1fICV0PgqlbTWNrMo');
  }

  @override
  Future<String?> getToken() async {
    return 'hoge';
  }

  @override
  Stream<NotificationMessage> onMessageOpenedApp() {
    return const Stream.empty();
  }

  @override
  Future<NotificationPermission> requestPermission() async {
    return NotificationPermission.authorized;
  }

  @override
  Future<void> sendMessage({
    required GroupId groupId,
    required UserId userId,
    required String title,
    required String body,
    required NotificationTarget target,
    required NotificationEvent event,
    required String path,
  }) async {}
}
