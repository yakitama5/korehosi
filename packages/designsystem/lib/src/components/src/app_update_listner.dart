import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_designsystem/i18n/strings.g.dart';
import 'package:packages_designsystem/src/components/src/dialogs.dart';
import 'package:packages_designsystem/src/keys/root_navigator_key.dart';
import 'package:packages_domain/core.dart';
import 'package:store_redirect/store_redirect.dart';

class AppUpdateListner extends SingleChildStatelessWidget {
  const AppUpdateListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => Consumer(
    child: child,
    builder: (_, ref, child) {
      ref.listen(appUpdateStatusProvider, (_, snapshot) async {
        // 共通Widgetのため、呼び出し元によらずRootを利用する
        final rootContext = rootNavigatorKey.currentContext;
        if (!snapshot.hasValue || rootContext == null || !rootContext.mounted) {
          return;
        }

        final status = snapshot.value;
        switch (status) {
          case AppUpdateStatus.updateRequired:
            await showOkBarrierDismissibleDialog(
              rootContext,
              message: i18n.designsystem.appUpdate.forceUpdate.message,
              okLabel: i18n.designsystem.appUpdate.navigateStore,
              onOk: () => navigateToStore(ref),
            );
          case AppUpdateStatus.updatePossible:
            final result = await showOkCancelAlertDialog(
              context: rootContext,
              message: i18n.designsystem.appUpdate.updatePossible.message,
              okLabel: i18n.designsystem.appUpdate.navigateStore,
            );
            return switch (result) {
              OkCancelResult.ok => navigateToStore(ref),
              OkCancelResult.cancel => null,
            };
          case AppUpdateStatus.usingLatest:
          case null:
          // do nothing
        }
      });

      return child ?? const SizedBox.shrink();
    },
  );

  /// ストアページへ遷移する.
  Future<void> navigateToStore(WidgetRef ref) async {
    final appBuildConfig = ref.read(appBuildConfigProvider);

    return StoreRedirect.redirect(
      androidAppId: appBuildConfig.packageName,
      iOSAppId: appBuildConfig.packageName,
    );
  }
}
