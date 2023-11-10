import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/config/user_config.dart';
import '../../../../application/state/locale_provider.dart';
import '../../../components/src/reactive_segmented_button.dart';

class AgeGroupField extends HookConsumerWidget {
  const AgeGroupField({
    super.key,
    this.fieldKey,
  });

  final Key? fieldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveSegmentedButton(
      key: fieldKey,
      formControlName: userConfig.ageGroupKey,
      labelText: l10n.ageGroup,
    );
  }
}
