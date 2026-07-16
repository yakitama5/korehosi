import 'package:fcm_config/fcm_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/common/extension/remote_message_extension.dart';

void main() {
  test('maps notification routing data', () {
    final message = const RemoteMessage(
      data: {
        'groupId': 'target-group',
        'path': '/items/item/target-item',
      },
    ).toDomainModel();

    expect(message.groupId?.value, 'target-group');
    expect(message.path, '/items/item/target-item');
  });
}
