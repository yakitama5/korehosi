import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/entity/user.dart';
import 'auth_status_provider.dart';
import 'user_provider.dart';

part 'auth_user_provider.g.dart';

/// 認証済のユーザー
@Riverpod(keepAlive: true)
Future<User?> authUser(AuthUserRef ref) async {
  final userId =
      await ref.watch(authStatusProvider.selectAsync((value) => value?.uid));
  if (userId == null) {
    return null;
  }

  final user = await ref.watch(userProvider(userId: userId).future);

  return user;
}
