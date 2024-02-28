import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../hooks/use_l10n.dart';
import 'text_with_label.dart';

class DateTextWithLabel extends HookConsumerWidget {
  const DateTextWithLabel({
    super.key,
    this.dateTime,
    required this.label,
  });
  final DateTime? dateTime;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final formatter = DateFormat.yMMMd(l10n.localeName);

    return TextWithLabel(
      dateTime != null ? formatter.format(dateTime!) : null,
      label: label,
    );
  }
}
