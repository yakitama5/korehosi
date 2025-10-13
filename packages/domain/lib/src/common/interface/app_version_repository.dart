import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:version/version.dart';

part 'app_version_repository.g.dart';

@Riverpod(keepAlive: true)
AppVersionRepository appVersionRepository(Ref ref) =>
    throw UnimplementedError();

abstract class AppVersionRepository {
  const AppVersionRepository();
  Stream<Version> listenLatestAppVersion();
  Stream<Version> listenForceUpdateAppVersion();
}
