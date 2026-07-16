import 'package:flutter_app/app/routes/src/notification_navigation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/notification.dart';

void main() {
  test('selects the notification group before opening its path', () async {
    final events = <String>[];

    await openNotification(
      message: NotificationMessage(
        groupId: GroupId('target-group'),
        path: '/items/item/target-item',
      ),
      selectGroup: (groupId) async => events.add('group:${groupId.value}'),
      openPath: (path) => events.add('path:$path'),
    );

    expect(events, [
      'group:target-group',
      'path:/items/item/target-item',
    ]);
  });

  test('does not navigate when notification path is absent', () async {
    var navigated = false;

    await openNotification(
      message: const NotificationMessage(path: null),
      selectGroup: (_) async {},
      openPath: (_) => navigated = true,
    );

    expect(navigated, isFalse);
  });
}
