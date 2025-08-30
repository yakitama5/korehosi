import 'package:family_wish_list/app/infrastructure/firebase/messaging/extension/remote_message_extension.dart';
import 'package:family_wish_list/app/infrastructure/firebase/messaging/state/fcm_config_provider.dart';
import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/notification/entity/notification_message.dart';
import '../../../domain/notification/interface/messaging_service.dart';
import '../../../domain/notification/value_object/notification_event.dart';
import '../../../domain/notification/value_object/notification_permission.dart';
import '../../../domain/notification/value_object/notification_target.dart';
import '../firestore/model/firestore_group_message_model.dart';
import '../firestore/state/firestore_group_message_provider.dart';

/// Firebaseを利用したサービスの実装
class FirebaseMessagingMessagingService implements MessagingService {
  const FirebaseMessagingMessagingService(this.ref);

  final Ref ref;

  @override
  Future<String?> getToken() =>
      ref.read(fcmConfigProvider).messaging.getToken();

  @override
  Future<NotificationPermission> requestPermission() async {
    final settings =
        await ref.read(fcmConfigProvider).messaging.requestPermission();

    // FCM特有のドメインモデルに変換
    return switch (settings.authorizationStatus) {
      AuthorizationStatus.authorized => NotificationPermission.authorized,
      AuthorizationStatus.denied => NotificationPermission.denied,
      AuthorizationStatus.notDetermined => NotificationPermission.notDetermined,
      AuthorizationStatus.provisional => NotificationPermission.provisional,
    };
  }

  @override
  Future<NotificationMessage?> getInitialMessage() => ref
      .read(fcmConfigProvider)
      .getInitialMessage()
      .then((value) => value?.toDomainModel());

  @override
  Stream<NotificationMessage> onMessageOpenedApp() => ref
      .read(fcmConfigProvider)
      .onMessage
      .map((event) => event.toDomainModel());

  @override
  Future<void> sendMessage({
    required String groupId,
    required String uid,
    required String title,
    required String body,
    required NotificationTarget target,
    required NotificationEvent event,
    required String path,
  }) {
    // IDが指定されていなければ、新しいドキュメントを取得
    final docRef = ref.read(
      groupMessageDocumentRefProvider(groupId: groupId),
    );

    // Firestore用のモデルに変換
    final docModel = FirestoreGroupMessageModel(
      id: docRef.id,
      title: title,
      body: body,
      target: target,
      event: event,
      path: path,
      uid: uid,
    );

    // 登録
    return docRef.set(docModel);
  }
}
