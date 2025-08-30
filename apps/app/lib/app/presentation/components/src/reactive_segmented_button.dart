import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../domain/user/value_object/age_group.dart';
import '../../hooks/importer.dart';
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

class _Form extends HookWidget {
  const _Form(this.field, this.labelText);

  final ReactiveFormFieldState<AgeGroup, AgeGroup> field;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();

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
                    label: Text(e.localeName),
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
