import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/group.dart';

class ItemTransferGroupBottomSheet extends StatelessWidget {
  const ItemTransferGroupBottomSheet({super.key, required this.groups});

  final List<Group> groups;

  static Future<Group?> show({
    required BuildContext context,
    required List<Group> groups,
  }) => showModalBottomSheet<Group>(
    context: context,
    useSafeArea: true,
    builder: (context) => ItemTransferGroupBottomSheet(groups: groups),
  );

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
    final messages = i18n.item.itemPage.transfer;

    return BottomSheetColumn(
      title: BottomSheetTitleText(messages.selectGroup),
      children: [
        if (groups.isEmpty)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(messages.noDestination),
          )
        else
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 320),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: groups.length,
              itemBuilder: (context, index) {
                final group = groups[index];
                return ListTile(
                  leading: const Icon(Icons.group),
                  title: Text(group.name),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => navigator.pop(group),
                );
              },
              separatorBuilder: (context, index) => const Divider(height: 1),
            ),
          ),
        Align(
          alignment: Alignment.centerRight,
          child: BottomSheetCancelButton(onPressed: navigator.pop),
        ),
      ],
    );
  }
}
