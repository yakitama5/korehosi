import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/src/components/src/expand_width_container.dart';
import 'package:packages_designsystem/src/hooks/src/use_theme.dart';
import 'package:packages_domain/user.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveSegmentedButton extends ReactiveFormField<AgeGroup, AgeGroup> {
  ReactiveSegmentedButton({
    super.key,
    String? labelText,
    String? helperText,
    bool readOnly = false,
    required String formControlName,
  }) : super(
         formControlName: formControlName,
         builder: (ReactiveFormFieldState<AgeGroup, AgeGroup> field) => _Form(
           field,
           labelText,
           helperText: helperText,
           readOnly: readOnly,
         ),
       );
}

class _Form extends HookWidget {
  const _Form(
    this.field,
    this.labelText, {
    this.helperText,
    required this.readOnly,
  });

  final ReactiveFormFieldState<AgeGroup, AgeGroup> field;
  final String? labelText;
  final String? helperText;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(labelText!, style: theme.textTheme.labelMedium),
        const Gap(4),
        ExpandWidthContainer(
          child: SegmentedButton<AgeGroup>(
            segments: AgeGroup.values
                .map(
                  (e) => ButtonSegment<AgeGroup>(
                    label: Text(commonI18n.kEnum.ageGroup(context: e)),
                    value: e,
                  ),
                )
                .toList(),
            selected: field.value == null ? {} : {field.value!},
            onSelectionChanged: readOnly
                ? null
                : (selection) => field.didChange(selection.first),
          ),
        ),
        if (helperText != null) ...[
          const Gap(4),
          Text(
            helperText!,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ],
    );
  }
}
