import 'package:cores_domain/core.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:version/version.dart';

part 'app_latest_version_provider.g.dart';

@riverpod
Stream<Version> appLatestVersion(Ref ref) =>
    ref.watch(appVersionRepositoryProvider).listenLatestAppVersion();
