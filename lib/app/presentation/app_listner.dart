import 'package:family_wish_list/app/application/config/app_config.dart';
import 'package:family_wish_list/app/application/usecase/user/state/auth_user_provider.dart';
import 'package:family_wish_list/app/domain/notification/value_object/notification_permission.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_redirect/store_redirect.dart';

import '../application/model/dialog_result.dart';
import '../application/state/locale_provider.dart';
import '../application/usecase/settings/state/force_update_provider.dart';
import '../domain/notification/interface/messaging_service.dart';
import '../utils/logger.dart';
import 'components/importer.dart';

class AppListner extends HookConsumerWidget {
  const AppListner(this.child, {super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリの状態を監視
    _updateCheckListner(context, ref);
    // 通知権限を監視
    _notificationPermissionListner(context, ref);

    return child;
  }

  void _notificationPermissionListner(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): ユーザーにFCMTokenが設定されておらず、ログイン状態であればダイアログ表示？
    // 現在のユーザー情報を取得する
    ref.listen(authUserProvider, (previous, next) async {
      // ユーザー情報が存在しなければ何もしない
      final user = next.value;
      if (user == null) {
        return;
      }

      // FCMTokenが設定されていない場合、通知権限をリクエストする
      if (user.fcmTokens == null || user.fcmTokens!.isEmpty) {
        final result =
            await ref.read(messagingServiceProvider).requestPermission();
        switch (result) {
          case NotificationPermission.denied:
          case NotificationPermission.notDetermined:
            // 許可されない場合は何もしない
            return;
          case NotificationPermission.authorized:
          case NotificationPermission.provisional:
        }

        final token = await ref.read(messagingServiceProvider).getToken();
        logger.d('FCM Token is $token');
      }
    });
  }

  /// アプリのバージョンを監視して、バージョン確認ダイアログを表示する
  void _updateCheckListner(BuildContext context, WidgetRef ref) {
    // Web版は監視しない
    if (kIsWeb) {
      return;
    }

    ref.listen(
      forceUpdateProvider,
      (previous, next) async {
        if (next.value == true) {
          // 更新が必要な場合はダイアログを表示
          final l10n = ref.read(l10nProvider);
          final result = await showAdaptiveOkCancelDialog(
            context,
            title: l10n.updateAppTitle,
            message: l10n.updateAppMessage,
            okLabel: l10n.goStore,
          );

          switch (result) {
            case DialogResult.ok:
              await StoreRedirect.redirect(
                androidAppId: appConfig.packageName,
                iOSAppId: appConfig.appStoreId,
              );
            case DialogResult.cancel:
            case null:
            // do nothing
          }
        }
      },
    );
  }
}
