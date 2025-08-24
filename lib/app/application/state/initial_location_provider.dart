import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initial_location_provider.g.dart';

/// 初期ロケーション
/// アプリ起動時 または テスト時にoverrideして利用する前提
@riverpod
String? initialLocation(Ref ref) => throw UnimplementedError();
