import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/app_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_info_provider.g.dart';

/// アプリ情報のProvider
@Riverpod(keepAlive: true)
Future<AppInfo> appInfo(Ref ref) =>
    ref.read(appInfoRepositoryProvider).fetchAppInfo();
