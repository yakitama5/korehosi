import 'package:cores_domain/core.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:version/version.dart';

part 'force_update_version_provider.g.dart';

@riverpod
Stream<Version> forceUpdateVersion(Ref ref) =>
    ref.watch(appVersionRepositoryProvider).listenForceUpdateAppVersion();
