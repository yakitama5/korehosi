import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/notification/entity/notification_message.dart';
import '../converter/json_key.dart';

part 'firestore_notification_message_model.freezed.dart';
part 'firestore_notification_message_model.g.dart';

/// `/message/{messageId}`ドキュメントのモデル
@freezed
class FirestoreNotificationMessageModel
    with _$FirestoreNotificationMessageModel {
  const factory FirestoreNotificationMessageModel({
    required String id,
    required String body,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreNotificationMessageModel;

  factory FirestoreNotificationMessageModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FirestoreNotificationMessageModelFromJson(json);
}

extension FirestoreNotificationMessageModelX
    on FirestoreNotificationMessageModel {
  /// ドメイン層で定義しているエンティティへの変換
  NotificationMessage toDomainModel() => NotificationMessage(
        id: id,
        body: body,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
