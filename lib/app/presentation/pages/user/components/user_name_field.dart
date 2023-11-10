import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/config/user_config.dart';
import '../../../../application/state/locale_provider.dart';
import '../../../components/src/reactive_outlined_text_field.dart';

class UserNameField extends HookConsumerWidget {
  const UserNameField({
    super.key,
    this.fieldKey,
  });

  final Key? fieldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveOutlinedTextField<String>(
      key: fieldKey,
      formControlName: userConfig.nameKey,
      labelText: l10n.nameLabel,
      maxLength: userConfig.maxNameLength,
    );
  }
}
