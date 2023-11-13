import 'package:freezed_annotation/freezed_annotation.dart';

part 'functions_join_group_response.freezed.dart';
part 'functions_join_group_response.g.dart';

/// `joinGroup`ファンクションのレスポンス定義
@freezed
class FunctionsJoinGroupResponse with _$FunctionsJoinGroupResponse {
  const factory FunctionsJoinGroupResponse({
    String? errorCode,
  }) = _FunctionsJoinGroupResponse;

  factory FunctionsJoinGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$FunctionsJoinGroupResponseFromJson(json);
}
