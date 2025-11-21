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
}
