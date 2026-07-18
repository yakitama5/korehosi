import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/notification/model/firestore_notification_token_model.dart';
import 'package:infrastructure_firebase/src/notification/state/firestore_notification_token_provider.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod/riverpod.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseNotificationTokenRepository
    implements NotificationTokenRepository {
  const FirebaseNotificationTokenRepository(this.ref);

  final Ref ref;

  @override
  Future<void> set({required UserId userId, required String token}) async {
    final docRef = ref.read(
      notificationTokenDocumentRefProvider(userId: userId, token: token),
    );

    // Firestore用のモデルに変換
    late final FirestoreNotificationTokenModel model;
    final snap = await docRef.get();
    if (snap.exists) {
      model = snap.data()!.copyWith(token: token);
    } else {
      model = FirestoreNotificationTokenModel(token: token);
    }

    return docRef.set(model);
  }

  @override
  Stream<WishReminderSettings> watchWishReminderSettings({
    required UserId userId,
  }) => _wishReminderDocument(userId).snapshots().map((snapshot) {
    final data = snapshot.data();
    if (data == null) {
      return const WishReminderSettings();
    }
    final rawOffsets = data['offsetDays'];
    final offsets = rawOffsets is Iterable
        ? rawOffsets.whereType<int>().toSet()
        : <int>{};
    return WishReminderSettings(
      enabled: data['enabled'] == true,
      timings: WishReminderTiming.values
          .where((timing) => offsets.contains(timing.daysBefore))
          .toSet(),
      audience: data['audience'] == NotificationTarget.all.name
          ? NotificationTarget.all
          : NotificationTarget.adult,
      timeZone: data['timeZone'] is String
          ? data['timeZone'] as String
          : 'Asia/Tokyo',
    );
  });

  @override
  Future<void> setWishReminderSettings({
    required UserId userId,
    required WishReminderSettings settings,
  }) => _wishReminderDocument(userId).set({
    'enabled': settings.enabled,
    'offsetDays': settings.timings.map((timing) => timing.daysBefore).toList(),
    'audience': settings.audience.name,
    'timeZone': settings.timeZone,
    'updatedAt': FieldValue.serverTimestamp(),
  });

  DocumentReference<Map<String, dynamic>> _wishReminderDocument(
    UserId userId,
  ) => ref
      .read(firestoreProvider)
      .collection('users')
      .doc(userId.value)
      .collection('notificationSettings')
      .doc('wishReminder');
}
