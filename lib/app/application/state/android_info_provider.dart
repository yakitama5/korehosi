import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/device_info/entity/android_info.dart';
import '../../domain/device_info/interface/device_info_service.dart';

part 'android_info_provider.g.dart';

/// Androidのデバイス情報
@riverpod
Future<AndroidInfo> androidInfo(AndroidInfoRef ref) =>
    ref.read(deviceInfoServiceProvider).fetchAndroidInfo();
