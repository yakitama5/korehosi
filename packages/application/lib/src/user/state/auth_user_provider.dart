import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'auth_status_provider.dart';
import 'user_provider.dart';

part 'auth_user_provider.g.dart';

/// 認証済のユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Future<User?> authUser(Ref ref) async {
  final userId = await ref.watch(
    authStatusProvider.selectAsync((value) => value?.userId),
  );
  if (userId == null) {
    return null;
  }

  final user = await ref.watch(userProvider(userId: userId).future);

  return user;
}
