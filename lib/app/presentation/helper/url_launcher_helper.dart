import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../application/state/locale_provider.dart';
import '../components/importer.dart';

/// URL文字列に遷移する
Future<bool> lanchUrlStringSafety(
  BuildContext context,
  String url, {
  String? secondUrl,
}) async {
  final ref = ProviderScope.containerOf(context);
  final l10n = ref.read(l10nProvider);

  Future<void> showDialog() => showAdaptiveOkDialog(
        context,
        title: l10n.error,
        message: l10n.urlErrorMessageCanNotOpen,
      );

  if (await canLaunchUrlString(url)) {
    return launchUrlString(url);
  } else if (secondUrl != null && await canLaunchUrlString(secondUrl)) {
    return launchUrlString(secondUrl);
  }

  await showDialog();
  return Future.value(false);
}
