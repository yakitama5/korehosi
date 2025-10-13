import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';
import 'package:packages_domain/notification.dart';

part 'firestore_notification_token_model.freezed.dart';
part 'firestore_notification_token_model.g.dart';

/// `/token/{tokenId}`ドキュメントのモデル
@freezed
abstract class FirestoreNotificationTokenModel
    with _$FirestoreNotificationTokenModel {
  const factory FirestoreNotificationTokenModel({
    required String token,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreNotificationTokenModel;

  factory FirestoreNotificationTokenModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreNotificationTokenModelFromJson(json);
}

extension FirestoreNotificationTokenModelX on FirestoreNotificationTokenModel {
  /// ドメイン層で定義しているエンティティへの変換
  NotificationToken toDomainModel() => NotificationToken(
    token: token,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
