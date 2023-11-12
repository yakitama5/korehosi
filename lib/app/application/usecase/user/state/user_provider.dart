import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/entity/user.dart';
import '../user_usecase.dart';

part 'user_provider.g.dart';

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<User?> user(UserRef ref, {required String userId}) {
  return ref.read(userUsecaseProvider).fetch(userId: userId);
}
