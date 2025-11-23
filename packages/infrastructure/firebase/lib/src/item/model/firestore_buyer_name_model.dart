import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_buyer_name_model.freezed.dart';
part 'firestore_buyer_name_model.g.dart';

/// `/groups/{groupId}/buyerName/{buyerNameId}`ドキュメントのモデル
@freezed
abstract class FirestoreBuyerNameModel with _$FirestoreBuyerNameModel {
  const factory FirestoreBuyerNameModel({
    required String name,
  }) = _FirestoreBuyerNameModel;

  factory FirestoreBuyerNameModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreBuyerNameModelFromJson(json);
}
