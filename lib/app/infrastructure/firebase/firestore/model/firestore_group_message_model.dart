import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/notification/entity/group_message.dart';
import '../../../../domain/notification/value_object/notification_event.dart';
import '../../../../domain/notification/value_object/notification_target.dart';
import '../converter/json_key.dart';

part 'firestore_group_message_model.freezed.dart';
part 'firestore_group_message_model.g.dart';

/// `/message/{messageId}`ドキュメントのモデル
@freezed
class FirestoreGroupMessageModel with _$FirestoreGroupMessageModel {
  const factory FirestoreGroupMessageModel({
    required String id,
    required String title,
    required String body,
    required NotificationTarget target,
    @notificationEventKey required NotificationEvent event,
    String? path,
    required String uid,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreGroupMessageModel;

  factory FirestoreGroupMessageModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FirestoreGroupMessageModelFromJson(json);
}

extension FirestoreGroupMessageModelX on FirestoreGroupMessageModel {
  /// ドメイン層で定義しているエンティティへの変換
  GroupMessage toDomainModel() => GroupMessage(
        id: id,
        title: title,
        body: body,
        target: target,
        event: event,
        path: path,
        uid: uid,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
