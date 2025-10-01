import 'package:flutter_app/app/application/usecase/user/state/auth_status_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      .fetchTokenTimestamp(uid: authStatus.uid);
}
