import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/app_info.dart';

part 'app_info_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
AppInfoService appInfoService(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// アプリ情報を管理するサービス
// ignore: one_member_abstracts
abstract class AppInfoService {
  /// アプリ情報を取得する
  Future<AppInfo> fetchAppInfo();
}
