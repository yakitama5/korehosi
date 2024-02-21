import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/model/dialog_result.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/group/group_usecase.dart';
import '../../../application/usecase/group/state/view_groups_provider.dart';
import '../../../domain/group/entity/group_tile.dart';
import '../../components/importer.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import '../item/components/list_loader_view.dart';
import '../presentation_mixin.dart';
import 'components/not_group_view.dart';

class GroupsPage extends HookConsumerWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final asyncGroups = ref.watch(viewGroupsProvider);
    final scrollController = useScrollController();

    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              title: Text(l10n.joinGroup),
              actions: [
                IconButton(
                  onPressed: () => _onHelp(context, ref),
                  icon: const Icon(Icons.help),
                  tooltip: l10n.help,
                ),
              ],
            ),
            asyncGroups.when(
              // 画面のちらつきを抑えるため、フィルターやリアルタイム反映はローディングを挟まない
              skipLoadingOnReload: true,
              data: (groups) => groups.isEmpty
                  ? const SliverFillRemaining(
                      hasScrollBody: false,
                      child: NotGroupView(),
                    )
                  : SliverPadding(
                      padding: const EdgeInsets.only(bottom: 120),
                      sliver: SliverList.separated(
                        itemCount: groups.length,
                        itemBuilder: (context, index) =>
                            _ListTile(groups[index]),
                        separatorBuilder: (context, index) => const Divider(),
                      ),
                    ),
              error: SliverErrorView.new,
              loading: () => const SliverFillRemaining(
                child: ListLoaderView(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const _Fab(),
    );
  }

  void _onHelp(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    showAdaptiveOkDialog(
      context,
      icon: const Icon(Icons.help),
      title: l10n.shareGroupHelpTitle,
      message: l10n.shareGroupHelpMessage,
    );
  }
}

class _Fab extends HookConsumerWidget with PresentationMixin {
  const _Fab();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return FloatingActionButton.extended(
      label: Text(l10n.addGroup),
      icon: const Icon(Icons.add),
      onPressed: () => onAdd(context, ref),
    );
  }

  Future<void> onAdd(BuildContext context, WidgetRef ref) async {
    // ダイアログを表示して入力を促す
    // 値の入力 (ダイアログ表示)
    final l10n = ref.read(l10nProvider);
    final inputName = await showAdaptiveTextDialog(
      context,
      title: l10n.groupName,
      labelText: l10n.groupName,
      maxLength: 40,
      okLabel: l10n.save,
      isRequired: true,
    );
    if (inputName == null) {
      return;
    }

    // 登録
    if (context.mounted) {
      await execute(
        context,
        action: () async {
          await ref.read(groupUsecaseProvider).add(name: inputName);
        },
      );
    }
  }
}

class _ListTile extends HookConsumerWidget with PresentationMixin {
  const _ListTile(this.tileModel);

  final GroupTile tileModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = ref.watch(l10nProvider);

    return Slidable(
      key: ValueKey(tileModel.group.id),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        children: [
          // 作成者であれば削除
          if (tileModel.isOwner) _buildDeleteAction(context, ref),
          // 参加者であれば離脱
          if (!tileModel.isOwner) _buildLeaveAction(context, ref),
        ],
      ),
      child: ListTile(
        onTap: () => GroupRouteData(tileModel.group.id).go(context),
        title: Text(
          tileModel.group.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          tileModel.ownerName ?? l10n.unset,
        ),
        // 表示中のグループにアイコンを表示
        leading: tileModel.current
            ? Icon(
                Icons.check_circle_outline,
                color: colorScheme.primary,
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  SlidableAction _buildDeleteAction(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return SlidableAction(
      onPressed: (_) async {
        final res = await confirmDelete(context, ref);
        if (res && context.mounted) {
          await onDelete(context, ref);
        }
      },
      backgroundColor: colorScheme.error,
      foregroundColor: colorScheme.onError,
      icon: Icons.delete,
      label: l10n.delete,
    );
  }

  SlidableAction _buildLeaveAction(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return SlidableAction(
      onPressed: (_) async {
        final res = await confirmLeave(context, ref);
        if (res && context.mounted) {
          await onLeave(context, ref);
        }
      },
      backgroundColor: colorScheme.error,
      foregroundColor: colorScheme.onError,
      icon: Icons.person_off,
      label: l10n.leave,
    );
  }

  Future<bool> confirmDelete(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final l10n = ref.read(l10nProvider);
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.deleteConfirmTitle,
      message: l10n.deleteGroupCofirmMessage(tileModel.group.name),
    );
    return result == DialogResult.ok;
  }

  Future<bool> confirmLeave(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final l10n = ref.read(l10nProvider);
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.leaveConfirmTitle,
      message: l10n.leaveCofirmMessage(tileModel.group.name),
    );
    return result == DialogResult.ok;
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    final group = tileModel.group;
    await execute(
      context,
      action: () async {
        return ref.read(groupUsecaseProvider).delete(groupId: group.id);
      },
    );
  }

  Future<void> onLeave(BuildContext context, WidgetRef ref) async {
    final group = tileModel.group;
    await execute(
      context,
      action: () async {
        return ref.read(groupUsecaseProvider).leave(groupId: group.id);
      },
    );
  }
}
