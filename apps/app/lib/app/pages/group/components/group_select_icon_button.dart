import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/account_dialog.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_designsystem/widgets.dart';

class GroupSelectIconButton extends HookConsumerWidget with PresentationMixin {
  const GroupSelectIconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.account_circle),
      onPressed: () => onAccount(context, ref),
      tooltip: i18n.item.itemsPage.account,
    );
  }

  Future<void> onAccount(BuildContext context, WidgetRef ref) async {
    // ダイアログで選択
    final groupId = await showAdaptiveAccountDialog(context);
    if (groupId == null) {
      return;
    }

    // 選択結果に応じてグループを切り替える
    if (context.mounted) {
      await execute(
        action: () =>
            ref.read(groupUsecaseProvider).setCurrentGroupId(groupId: groupId),
        successMessage: i18n.item.itemsPage.completeChangeGroup,
      );
    }
  }
}
