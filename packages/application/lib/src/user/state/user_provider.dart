import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/user/usecase/user_usecase.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<User?> user(Ref ref, {required String userId}) {
  return ref.read(userUsecaseProvider).fetch(userId: userId);
}
