import 'package:device_info_plus/device_info_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/device_info.dart';

///  `device_info_plus`パッケージによるサービスの実装
class DeviceInfoPlusDeviceInfoService implements DeviceInfoService {
  const DeviceInfoPlusDeviceInfoService(this.ref);

  final Ref ref;

  @override
  Future<AndroidInfo> fetchAndroidInfo() async {
    final androidInfo = await DeviceInfoPlugin().androidInfo;
    final version = androidInfo.version;

    // 変換して返却
    return AndroidInfo(
      version: AndroidVersion(
        baseOS: version.baseOS,
        codename: version.codename,
        incremental: version.incremental,
        release: version.release,
        sdkInt: version.sdkInt,
        previewSdkInt: version.previewSdkInt,
      ),
      brand: androidInfo.brand,
      device: androidInfo.device,
    );
  }
}
