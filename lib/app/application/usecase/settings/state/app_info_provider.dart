import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/app_info/entity/app_info.dart';
import '../../../../domain/app_info/interface/app_info_service.dart';

part 'app_info_provider.g.dart';

/// アプリ情報のProvider
@Riverpod(keepAlive: true)
Future<AppInfo> appInfo(AppInfoRef ref) =>
    ref.read(appInfoServiceProvider).fetchAppInfo();
