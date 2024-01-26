import 'package:family_wish_list/app/domain/service/cached_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_timestamp_provider.g.dart';

/// FCMトークンのタイムスタンプを管理するProvider
@riverpod
Future<DateTime?> tokenTimestamp(TokenTimestampRef ref) {
  return ref.read(cachedServiceProvider).fetchTokenTimestamp();
}
