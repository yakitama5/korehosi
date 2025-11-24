import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_wanter_name_model.freezed.dart';
part 'firestore_wanter_name_model.g.dart';

/// `/groups/{groupId}/items/{itemId}`ドキュメントのモデル
@freezed
abstract class FirestoreWanterNameModel with _$FirestoreWanterNameModel {
  const factory FirestoreWanterNameModel({
    required String name,
  }) = _FirestoreWanterNameModel;

  factory FirestoreWanterNameModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreWanterNameModelFromJson(json);
}
