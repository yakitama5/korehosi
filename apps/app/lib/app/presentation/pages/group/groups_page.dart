import 'package:cores_domain/group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/model/dialog_result.dart';
import '../../../application/usecase/group/group_usecase.dart';
import '../../../application/usecase/group/state/current_group_provider.dart';
import '../../../application/usecase/group/state/join_groups_provider.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../application/usecase/user/state/group_join_user_provider.dart';
import '../../components/importer.dart';
import '../../hooks/src/use_theme.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import '../item/components/list_loader_view.dart';
import '../presentation_mixin.dart';
import 'components/not_group_view.dart';

class GroupsPage extends HookWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              title: Text(i18n.app.joinGroup),
              actions: [
                IconButton(
                  onPressed: () => _onHelp(context),
                  icon: const Icon(Icons.help),
                  tooltip: i18n.app.help,
                ),
              ],
            ),
            const _SliverBody(),
          ],
        ),
      ),
      floatingActionButton: const _Fab(),
    );
  }

  void _onHelp(BuildContext context) {
    showAdaptiveOkDialog(
      context,
      icon: const Icon(Icons.help),
      title: i18n.app.shareGroupHelpTitle,
      message: i18n.app.shareGroupHelpMessage,
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(joinGroupsProvider);

    return groups.when(
      // 画面のちらつきを抑えるため、リアルタイム反映はローディングを挟まない
      skipLoadingOnReload: true,
      data: (groupsData) => groupsData?.isEmpty ?? true
          ? const SliverFillRemaining(
              hasScrollBody: false,
              child: NotGroupView(),
            )
          : SliverPadding(
              padding: const EdgeInsets.only(bottom: 120),
              sliver: SliverList.separated(
                itemCount: groupsData?.length,
                itemBuilder: (context, index) => _ListTile(groupsData![index]),
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
      error: SliverErrorView.new,
      loading: () => const SliverFillRemaining(child: ListLoaderView()),
    );
  }
}

class _Fab extends HookConsumerWidget with PresentationMixin {
  const _Fab();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      label: Text(i18n.app.addGroup),
      icon: const Icon(Icons.add),
      onPressed: () => onAdd(context, ref),
    );
  }

  Future<void> onAdd(BuildContext context, WidgetRef ref) async {
    // ダイアログを表示して入力を促す
    // 値の入力 (ダイアログ表示)
    final inputName = await showAdaptiveTextDialog(
      context,
      title: i18n.app.groupName,
      labelText: i18n.app.groupName,
      maxLength: 40,
      okLabel: i18n.app.save,
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
  const _ListTile(this.group);

  final Group group;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = useColorScheme();

    final owner = ref.watch(
      groupJoinUserProvider(groupId: group.id, userId: group.ownerUid),
    );
    final authUser = ref.watch(authUserProvider);
    final currentGroup = ref.watch(currentGroupProvider);

    return switch ((owner, authUser, currentGroup)) {
      (
        AsyncData(value: final ownerData),
        AsyncData(value: final authUserData),
        AsyncData(value: final currentGroupData),
      ) =>
        Slidable(
          key: ValueKey(group.id),
          endActionPane: ActionPane(
            motion: const DrawerMotion(),
            extentRatio: 0.25,
            children: [
              // 作成者であれば削除
              if (authUserData?.id == group.ownerUid)
                _buildDeleteAction(context, ref),
              // 参加者であれば離脱
              if (authUserData?.id != group.ownerUid)
                _buildLeaveAction(context, ref),
            ],
          ),
          child: ListTile(
            onTap: () => GroupRouteData(group.id).go(context),
            title: Text(
              group.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(ownerData?.name ?? i18n.app.unset),
            // 表示中のグループにアイコンを表示
            leading: group.id == currentGroupData?.id
                ? Icon(Icons.check_circle_outline, color: colorScheme.primary)
                : const SizedBox.shrink(),
          ),
        ),
      (AsyncError(error: final error, stackTrace: final stackTrace), _, _) ||
      (_, AsyncError(error: final error, stackTrace: final stackTrace), _) ||
      (
        _,
        _,
        AsyncError(error: final error, stackTrace: final stackTrace),
      ) => ErrorView(error, stackTrace),

      // TODO(yakitama5): 読み込み中表示を後から作ること
      _ => const CircularProgressIndicator(),
    };
  }

  SlidableAction _buildDeleteAction(BuildContext context, WidgetRef ref) {
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
      label: i18n.app.delete,
    );
  }

  SlidableAction _buildLeaveAction(BuildContext context, WidgetRef ref) {
    final colorScheme = useColorScheme();

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
      label: i18n.app.leave,
    );
  }

  Future<bool> confirmDelete(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: i18n.app.deleteConfirmTitle,
      message: i18n.app.deleteGroupCofirmMessage(name: group.name),
    );
    return result == DialogResult.ok;
  }

  Future<bool> confirmLeave(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: i18n.app.leaveConfirmTitle,
      message: i18n.app.leaveCofirmMessage(group: group.name),
    );
    return result == DialogResult.ok;
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) => execute(
    context,
    action: () => ref.read(groupUsecaseProvider).delete(groupId: group.id),
  );

  Future<void> onLeave(BuildContext context, WidgetRef ref) => execute(
    context,
    action: () => ref.read(groupUsecaseProvider).leave(groupId: group.id),
  );
}
