import 'package:fcm_config/fcm_config.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/extension/remote_message_extension.dart';
import 'package:infrastructure_firebase/src/common/state/fcm_config_provider.dart';
import 'package:infrastructure_firebase/src/group/model/firestore_group_message_model.dart';
import 'package:infrastructure_firebase/src/group/state/firestore_group_message_provider.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';

/// Firebaseを利用したサービスの実装
class FirebaseMessagingMessagingService implements MessagingService {
  const FirebaseMessagingMessagingService(this.ref);

  final Ref ref;

  @override
  Future<String?> getToken() =>
      ref.read(fcmConfigProvider).messaging.getToken();

  @override
  Future<NotificationPermission> requestPermission() async {
    final settings = await ref
        .read(fcmConfigProvider)
        .messaging
        .requestPermission();

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
      // FCMConfig側でキャッシュされてしまうため、FirebaseMessaging側のインスタンスから取得する
      .messaging
      .getInitialMessage()
      .then((value) => value?.toDomainModel());

  @override
  Stream<NotificationMessage> onMessageOpenedApp() => FirebaseMessaging
      .onMessageOpenedApp
      .map((event) => event.toDomainModel());

  @override
  Future<void> sendMessage({
    required GroupId groupId,
    required UserId userId,
    required String title,
    required String body,
    required NotificationTarget target,
    required NotificationEvent event,
    required String path,
  }) {
    // IDが指定されていなければ、新しいドキュメントを取得
    final docRef = ref.read(groupMessageDocumentRefProvider(groupId: groupId));

    // Firestore用のモデルに変換
    final docModel = FirestoreGroupMessageModel(
      id: docRef.id,
      title: title,
      body: body,
      target: target,
      event: event,
      path: path,
      uid: userId.value,
    );

    // 登録
    return docRef.set(docModel);
  }
}
