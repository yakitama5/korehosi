import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/app_info/entity/app_info.dart';
import '../../../domain/app_info/interface/app_info_service.dart';
import '../state/package_info_provider.dart';

/// `package_info_plus`パッケージを利用したサービスの実装
class PackageInfoPlusAppInfoService implements AppInfoService {
  const PackageInfoPlusAppInfoService(this.ref);

  final Ref ref;

  @override
  Future<AppInfo> fetchAppInfo() async {
    final info = await ref.read(packageInfoProvider.future);

    // 変換
    return AppInfo(
      appName: info.appName,
      packageName: info.packageName,
      version: info.version,
      buildNumber: info.buildNumber,
    );
  }
}
