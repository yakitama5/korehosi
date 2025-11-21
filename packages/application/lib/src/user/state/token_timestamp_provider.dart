import 'package:packages_application/src/user/state/auth_status_provider.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_timestamp_provider.g.dart';

/// FCMトークンのタイムスタンプを管理するProvider
@riverpod
Future<DateTime?> tokenTimestamp(Ref ref, {required String token}) async {
  final authStatus = await ref.watch(authStatusProvider.future);
  if (authStatus == null) {
    return null;
  }

  return ref
      .read(userSessionRepositoryProvider)
      .fetchTokenTimestamp(userId: authStatus.userId);
}
