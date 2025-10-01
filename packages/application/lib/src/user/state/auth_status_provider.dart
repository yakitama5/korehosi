import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/user/usecase/user_usecase.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_status_provider.g.dart';

/// 認証状態
@Riverpod(keepAlive: true)
Stream<AuthStatus?> authStatus(Ref ref) =>
    ref.read(userUsecaseProvider).fetchAuthStatus();
