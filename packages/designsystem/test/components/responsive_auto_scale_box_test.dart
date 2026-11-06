import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_designsystem/src/components/src/responsive_auto_scale_box.dart';

void main() {
  testWidgets('starts with an empty viewport and renders when metrics arrive', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = Size.zero;
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(_app());
    expect(tester.takeException(), isNull);

    tester.view.physicalSize = const Size(390, 844);
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(_probeState(tester).logicalSize.width, 450);
    expect(
      _probeState(tester).logicalSize.height,
      closeTo(450 * 844 / 390, .001),
    );
    await tester.tap(find.text('Increment'));
    await tester.pump();
    expect(find.text('Count: 1'), findsOneWidget);
  });

  testWidgets(
    'keeps state through an empty viewport and resumes tablet scaling',
    (
      tester,
    ) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(390, 844);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);

      await tester.pumpWidget(_app());
      await tester.pumpAndSettle();
      await tester.tap(find.text('Increment'));
      await tester.pump();
      final state = _probeState(tester);

      tester.view.physicalSize = Size.zero;
      await tester.pump();
      expect(tester.takeException(), isNull);
      expect(_probeState(tester), same(state));

      tester.view.physicalSize = const Size(800, 1200);
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(_probeState(tester), same(state));
      expect(state.logicalSize, const Size(700, 1050));
      expect(find.text('Count: 1'), findsOneWidget);
      await tester.tap(find.text('Increment'));
      await tester.pump();
      expect(find.text('Count: 2'), findsOneWidget);
    },
  );
}

Widget _app() => const MaterialApp(
  home: ResponsiveAutoScaleBox(child: _ViewportProbe()),
);

_ViewportProbeState _probeState(WidgetTester tester) => tester.state(
  find.byType(_ViewportProbe, skipOffstage: false),
);

class _ViewportProbe extends StatefulWidget {
  const _ViewportProbe();

  @override
  State<_ViewportProbe> createState() => _ViewportProbeState();
}

class _ViewportProbeState extends State<_ViewportProbe> {
  int count = 0;
  Size logicalSize = Size.zero;

  @override
  Widget build(BuildContext context) {
    logicalSize = MediaQuery.sizeOf(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Count: $count'),
          TextButton(
            onPressed: () => setState(() => count += 1),
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
