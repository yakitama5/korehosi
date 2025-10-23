import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/user.dart';

part 'auth_status.freezed.dart';

/// 認証状態
@freezed
abstract class AuthStatus with _$AuthStatus {
  const factory AuthStatus({
    required UserId userId,
    required bool isAnonymous,
    required bool linkedGoogle,
    required bool linkedApple,
  }) = _AuthStatus;
}
