import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/user.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  testWidgets('allows age group selection by default', (tester) async {
    final form = FormGroup({
      'ageGroup': FormControl<AgeGroup>(value: AgeGroup.child),
    });

    await tester.pumpWidget(_subject(form: form));

    final button = tester.widget<SegmentedButton<AgeGroup>>(
      find.byType(SegmentedButton<AgeGroup>),
    );
    expect(button.onSelectionChanged, isNotNull);

    button.onSelectionChanged!({AgeGroup.adult});
    await tester.pump();

    expect(form.control('ageGroup').value, AgeGroup.adult);
  });

  testWidgets('shows the age group as read-only with an explanation', (
    tester,
  ) async {
    final form = FormGroup({
      'ageGroup': FormControl<AgeGroup>(value: AgeGroup.child),
    });

    await tester.pumpWidget(
      _subject(
        form: form,
        readOnly: true,
        helperText: 'This cannot be changed after registration.',
      ),
    );

    final button = tester.widget<SegmentedButton<AgeGroup>>(
      find.byType(SegmentedButton<AgeGroup>),
    );
    expect(button.onSelectionChanged, isNull);
    expect(button.selected, {AgeGroup.child});
    expect(
      find.text('This cannot be changed after registration.'),
      findsOneWidget,
    );

    await tester.tap(
      find.descendant(
        of: find.byType(SegmentedButton<AgeGroup>),
        matching: find.text('おとな'),
      ),
    );
    await tester.pump();

    expect(form.control('ageGroup').value, AgeGroup.child);
  });
}

Widget _subject({
  required FormGroup form,
  bool readOnly = false,
  String? helperText,
}) => MaterialApp(
  home: Scaffold(
    body: ReactiveForm(
      formGroup: form,
      child: ReactiveSegmentedButton(
        formControlName: 'ageGroup',
        readOnly: readOnly,
        helperText: helperText,
      ),
    ),
  ),
);
