import 'package:flutter/material.dart';

import '../../../application/model/dialog_result.dart';
import 'adaptive_dialogs/ok_cancel_dialog.dart';
import 'adaptive_dialogs/ok_dialog.dart';
import 'adaptive_dialogs/text_dialog.dart';

Future<DialogResult?> showAdaptiveOkDialog(
  BuildContext context, {
  Widget? icon,
  String? title,
  String? message,
  String? okLabel,
  bool useRootNavigator = true,
}) =>
    showAdaptiveDialog<DialogResult>(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (context) => OkDialog(
        icon: icon,
        title: title,
        message: message,
        okLabel: okLabel,
      ),
    );

Future<DialogResult?> showAdaptiveOkCancelDialog(
  BuildContext context, {
  String? title,
  String? message,
  String? okLabel,
  String? cancelLabel,
  bool useRootNavigator = true,
}) =>
    showAdaptiveDialog<DialogResult>(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (context) => OkCancelDialog(
        title: title,
        message: message,
        okLabel: okLabel,
        cancelLabel: cancelLabel,
      ),
    );

Future<String?> showAdaptiveTextDialog(
  BuildContext context, {
  String? title,
  String? okLabel,
  String? cancelLabel,
  String? initial,
  String? labelText,
  bool isRequired = false,
  int? maxLength,
  bool useRootNavigator = true,
}) =>
    showAdaptiveDialog(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (context) => TextDialog(
        title: title,
        okLabel: okLabel,
        cancelLabel: cancelLabel,
        initial: initial,
        labelText: labelText,
        maxLength: maxLength,
        isRequired: isRequired,
      ),
    );
