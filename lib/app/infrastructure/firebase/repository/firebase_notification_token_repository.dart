import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/notification/interface/notification_token_repository.dart';
import '../firestore/model/firestore_notification_token_model.dart';
import '../firestore/state/firestore_notification_token_provider.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseNotificationTokenRepository
    implements NotificationTokenRepository {
  const FirebaseNotificationTokenRepository(this.ref);

  final Ref ref;

  @override
  Future<void> set({
    required String userId,
    required String token,
  }) async {
    final docRef = ref.read(
      notificationTokenDocumentRefProvider(userId: userId, token: token),
    );

    // Firestore用のモデルに変換
    late final FirestoreNotificationTokenModel model;
    final snap = await docRef.get();
    if (snap.exists) {
      model = snap.data()!.copyWith(
            token: token,
          );
    } else {
      model = FirestoreNotificationTokenModel(token: token);
    }

    return docRef.set(model);
  }
}
