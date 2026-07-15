import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_transfer_group_bottom_sheet.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

void main() {
  testWidgets('returns the selected destination group', (tester) async {
    Group? selectedGroup;
    final group = _group('target', 'コピー先');

    await tester.pumpWidget(
      _TestApp(
        onOpen: (context) async {
          selectedGroup = await ItemTransferGroupBottomSheet.show(
            context: context,
            groups: [group],
          );
        },
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    await tester.tap(find.text(group.name));
    await tester.pumpAndSettle();

    expect(selectedGroup, group);
  });

  testWidgets('explains when no destination group exists', (tester) async {
    await tester.pumpWidget(
      _TestApp(
        onOpen: (context) => ItemTransferGroupBottomSheet.show(
          context: context,
          groups: const [],
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(
      find.text(i18n.item.itemPage.transfer.noDestination),
      findsOneWidget,
    );
  });
}

class _TestApp extends StatelessWidget {
  const _TestApp({required this.onOpen});

  final Future<void> Function(BuildContext context) onOpen;

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: Builder(
        builder: (context) => TextButton(
          onPressed: () => onOpen(context),
          child: const Text('open'),
        ),
      ),
    ),
  );
}

Group _group(String id, String name) => Group(
  id: GroupId(id),
  name: name,
  joinUids: const [],
  ownerUid: UserId('owner'),
  premium: false,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);
