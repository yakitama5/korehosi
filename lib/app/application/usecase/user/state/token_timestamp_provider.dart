import 'package:family_wish_list/app/application/usecase/user/state/auth_status_provider.dart';
import 'package:family_wish_list/app/domain/service/cached_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_timestamp_provider.g.dart';

/// FCMトークンのタイムスタンプを管理するProvider
@riverpod
Future<DateTime?> tokenTimestamp(TokenTimestampRef ref) async {
  final authStatus = await ref.watch(authStatusProvider.future);
  if (authStatus == null) {
    return null;
  }

  return ref
      .read(cachedServiceProvider)
      .fetchTokenTimestamp(uid: authStatus.uid);
}
