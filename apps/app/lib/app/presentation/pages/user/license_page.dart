import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/settings/state/app_info_provider.dart';
import '../error/components/error_view.dart';

class MyLincensePage extends HookConsumerWidget {
  const MyLincensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(appInfoProvider).when(
            data: (data) => LicensePage(
              applicationName: data.appName,
              applicationVersion: data.version,
            ),
            error: ErrorView.new,
            loading: SizedBox.shrink,
          ),
    );
  }
}
