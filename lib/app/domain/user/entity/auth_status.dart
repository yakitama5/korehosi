import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status.freezed.dart';
part 'auth_status.g.dart';

/// 認証状態
@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus({
    required String uid,
    required bool isAnonymous,
    required bool linkedGoogle,
    required bool linkedApple,
  }) = _AuthStatus;

  factory AuthStatus.fromJson(Map<String, dynamic> json) =>
      _$AuthStatusFromJson(json);
}
