import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// URL文字列に遷移する
Future<bool> lanchUrlStringSafety(
  BuildContext context,
  String url, {
  String? secondUrl,
}) async {
  final dialogMessages = commonI18n.designsystem.sendUrlErrorDialog;
  Future<void> showDialog() => showOkAlertDialog(
    context: context,
    title: dialogMessages.title,
    message: dialogMessages.message,
  );

  if (await canLaunchUrlString(url)) {
    return launchUrlString(url);
  } else if (secondUrl != null && await canLaunchUrlString(secondUrl)) {
    return launchUrlString(secondUrl);
  }

  await showDialog();
  return Future.value(false);
}
