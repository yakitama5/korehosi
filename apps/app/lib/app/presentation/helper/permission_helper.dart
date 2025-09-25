import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../application/model/dialog_result.dart';
import '../components/importer.dart';

Future<bool> requestPermissionPickImage(
  BuildContext context,
  WidgetRef ref,
  ImageSource imageSource,
) async {
  // Web版は権限確認が不要
  if (kIsWeb) {
    return true;
  }

  switch (imageSource) {
    case ImageSource.camera:
      return requestPermissionCamera(context, ref);
    case ImageSource.gallery:
      return requestPermissionGallery(context, ref);
  }
}

Future<bool> requestPermissionCamera(
  BuildContext context,
  WidgetRef ref,
) async {
  // 必要な権限を設定
  const requestPermission = Permission.camera;

  // 権限情報をユーザーにリクエスト
  return _request(context, ref, requestPermission);
}

Future<bool> requestPermissionGallery(
  BuildContext context,
  WidgetRef ref,
) async {
  // 必要な権限を設定
  final requestPermission = await _permissionGallery(context, ref);
  if (requestPermission == null) {
    return false;
  }

  // 権限情報をユーザーにリクエスト
  if (!context.mounted) {
    return false;
  }
  return _request(context, ref, requestPermission);
}

Future<Permission?> _permissionGallery(
  BuildContext context,
  WidgetRef ref,
) async {
  final theme = Theme.of(context);
  switch (theme.platform) {
    case TargetPlatform.android:
    case TargetPlatform.iOS:
      return Permission.photos;
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.macOS:
    case TargetPlatform.windows:
      return null;
  }
}

Future<bool> _request(
  BuildContext context,
  WidgetRef ref,
  Permission permission,
) async {
  final status = await permission.request();

  if (status.isGranted) {
    return true;
  } else if (status.isLimited || status.isPermanentlyDenied) {
    if (context.mounted) {
      await showPermissionDeinedDialog(
        context: context,
        ref: ref,
        permission: permission,
      );
    }

    return false;
  } else {
    return false;
  }
}

Future<void> showPermissionDeinedDialog({
  required BuildContext context,
  required WidgetRef ref,
  required Permission permission,
}) async {
  final cont = switch (permission) {
    Permission.camera => i18n.app.permissionCamera,
    Permission.storage || Permission.photos => i18n.app.permissionPhotos,
    Permission.notification => i18n.app.permissionPushNotification,
    _ => '',
  };

  // ダイアログを表示
  final result = await showAdaptiveOkDialog(
    context,
    title: i18n.app.lackOfPermission(permission: cont),
    message: i18n.app.permissionWarnMessage(permission: cont),
    okLabel: i18n.app.openSettingsApp,
  );

  // ダイアログの結果に応じて設定アプリを表示
  if (result == DialogResult.ok) {
    await openAppSettings();
  }
}

Future<void> showPermissionOffDialog({
  required BuildContext context,
  required WidgetRef ref,
  required Permission permission,
}) async {
  final cont = switch (permission) {
    Permission.camera => i18n.app.permissionCamera,
    Permission.storage || Permission.photos => i18n.app.permissionPhotos,
    Permission.notification => i18n.app.permissionPushNotification,
    _ => '',
  };

  // ダイアログを表示
  final result = await showAdaptiveOkDialog(
    context,
    title: i18n.app.confirmPermissionOffTitle(permission: cont),
    message: i18n.app.confirmPermissionOffMessage(permission: cont),
    okLabel: i18n.app.openSettingsApp,
  );

  // ダイアログの結果に応じて設定アプリを表示
  if (result == DialogResult.ok) {
    await openAppSettings();
  }
}
