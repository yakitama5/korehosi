import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';

class MyLicensePage extends HookConsumerWidget {
  const MyLicensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBuildConfig = ref.watch(appBuildConfigProvider);
    return Scaffold(
      body: LicensePage(
        applicationName: appBuildConfig.appName,
        applicationVersion: appBuildConfig.version.toString(),
      ),
    );
  }
}
