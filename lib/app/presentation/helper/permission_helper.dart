import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../application/state/android_info_provider.dart';
import '../../application/state/locale_provider.dart';
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
      final androidInfo = await ref.read(androidInfoProvider.future);
      if (androidInfo.version.sdkInt <= 32) {
        return Permission.storage;
      } else {
        return Permission.photos;
      }
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
  final l10n = ref.read(l10nProvider);

  if (status.isGranted) {
    return true;
  } else if (status.isLimited || status.isPermanentlyDenied) {
    late final String message;
    switch (permission) {
      case Permission.camera:
        message =
            l10n.permissionWarnMessage(l10n.uploadImage, l10n.permissionCamera);
      case Permission.storage:
      case Permission.photos:
      default:
        message =
            l10n.permissionWarnMessage(l10n.uploadImage, l10n.permissionPhotos);
    }
    if (context.mounted) {
      await showAdaptiveOkDialog(
        context,
        title: l10n.lackOfPermission,
        message: message,
      );
    }
    await openAppSettings();
    return false;
  } else {
    return false;
  }
}
