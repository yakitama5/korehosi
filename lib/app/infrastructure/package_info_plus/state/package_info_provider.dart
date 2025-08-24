import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_info_provider.g.dart';

/// PackageInfo
/// テスト時にDIすることを考慮して、Providerとして定義
@riverpod
Future<PackageInfo> packageInfo(Ref ref) => PackageInfo.fromPlatform();
