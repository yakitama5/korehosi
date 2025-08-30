import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/android_info.dart';

part 'device_info_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
DeviceInfoService deviceInfoService(Ref ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// Androidの端末情報
/// ignore: one_member_abstracts
abstract class DeviceInfoService {
  /// Androidの端末情報を取得する
  Future<AndroidInfo> fetchAndroidInfo();
}
