import 'package:device_info_plus/device_info_plus.dart';

import '../../../domain/device_info/entity/android_info.dart';
import '../../../domain/device_info/interface/device_info_service.dart';
import '../../../domain/device_info/value_object/android_version.dart';

///  `device_info_plus`パッケージによるサービスの実装
class DeviceInfoPlusDeviceInfoService implements DeviceInfoService {
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
