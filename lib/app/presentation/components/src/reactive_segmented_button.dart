import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/state/locale_provider.dart';
import '../../../domain/user/value_object/age_group.dart';
import 'expand_width_container.dart';

class ReactiveSegmentedButton extends ReactiveFormField<AgeGroup, AgeGroup> {
  ReactiveSegmentedButton({
    super.key,
    String? labelText,
    required String formControlName,
  }) : super(
          formControlName: formControlName,
          builder: (
            ReactiveFormFieldState<AgeGroup, AgeGroup> field,
          ) =>
              _Form(field, labelText),
        );
}

class _Form extends HookConsumerWidget {
  const _Form(this.field, this.labelText);

  final ReactiveFormFieldState<AgeGroup, AgeGroup> field;
  final String? labelText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: theme.textTheme.labelMedium,
          ),
        const Gap(4),
        ExpandWidthContainer(
          child: SegmentedButton<AgeGroup>(
            segments: AgeGroup.values
                .map(
                  (e) => ButtonSegment<AgeGroup>(
                    label: Text(e.getLocaleName(l10n)),
                    value: e,
                  ),
                )
                .toList(),
            selected: field.value == null ? {} : {field.value!},
            onSelectionChanged: (p0) => field.didChange(p0.first),
          ),
        ),
      ],
    );
  }
}
