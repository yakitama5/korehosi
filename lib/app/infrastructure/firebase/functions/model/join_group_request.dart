import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_group_request.freezed.dart';
part 'join_group_request.g.dart';

/// `joinGroup`ファンクションのリクエスト定義
@freezed
class JoinGroupRequest with _$JoinGroupRequest {
  const factory JoinGroupRequest({
    required String shareLinkId,
  }) = _JoinGroupRequest;

  factory JoinGroupRequest.fromJson(Map<String, dynamic> json) =>
      _$JoinGroupRequestFromJson(json);
}
