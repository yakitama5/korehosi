import 'package:flutter_app/app/routes/src/providers/go_router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/notification.dart';

typedef SelectNotificationGroup = Future<void> Function(GroupId groupId);
typedef OpenNotificationPath = void Function(String path);

/// 通知が発生したグループを選択してから、通知先を開く。
Future<void> openNotification({
  required NotificationMessage message,
  required SelectNotificationGroup selectGroup,
  required OpenNotificationPath openPath,
}) async {
  final path = message.path;
  if (path == null || path.isEmpty) {
    return;
  }

  final groupId = message.groupId;
  if (groupId != null) {
    await selectGroup(groupId);
  }

  openPath(path);
}

Future<void> navigateFromNotification(
  WidgetRef ref,
  NotificationMessage message,
) => openNotification(
  message: message,
  selectGroup: (groupId) =>
      ref.read(currentGroupIdProvider.notifier).set(groupId: groupId),
  openPath: ref.read(goRouterProvider).go,
);
