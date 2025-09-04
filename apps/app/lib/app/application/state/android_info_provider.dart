import 'package:cores_domain/device_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'android_info_provider.g.dart';

/// Androidのデバイス情報
@riverpod
Future<AndroidInfo> androidInfo(Ref ref) =>
    ref.read(deviceInfoServiceProvider).fetchAndroidInfo();
