import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/entity/auth_status.dart';
import '../user_usecase.dart';

part 'auth_status_provider.g.dart';

/// 認証状態
@Riverpod(keepAlive: true)
Stream<AuthStatus?> authStatus(AuthStatusRef ref) =>
    ref.read(userUsecaseProvider).fetchAuthStatus();
