import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/not_group_view.dart';
import 'package:flutter_app/app/pages/item/components/list_loader_view.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/group.dart';

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
              title: Text(i18n.group.groupsPage.title),
              actions: [
                IconButton(
                  onPressed: () => _onHelp(context),
                  icon: const Icon(Icons.help),
                  tooltip: i18n.group.groupsPage.help,
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
    final messages = i18n.group.groupsPage.shareGroupHelpDialog;
    showOkAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message,
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
      label: Text(i18n.group.groupsPage.createGroup),
      icon: const Icon(Icons.add),
      onPressed: () => onAdd(context, ref),
    );
  }

  Future<void> onAdd(BuildContext context, WidgetRef ref) async {
    // ダイアログを表示して入力を促す
    // 値の入力 (ダイアログ表示)
    final resultList = await showTextInputDialog(
      context: context,
      title: i18n.group.common.groupName,
      textFields: [
        DialogTextField(
          hintText: i18n.group.common.groupName,
          maxLength: 40,
          validator: (value) {
            // 必須チェック
            if (value?.isNotEmpty != true) {
              return commonI18n.designsystem.validationError.required;
            }

            return null;
          },
        ),
      ],
      okLabel: commonI18n.common.save,
    );

    // キャンセルされていれば(入力がなければ)後続処理を行わない
    final inputName = resultList?.firstOrNull;
    if (inputName == null || inputName.isEmpty) {
      return;
    }

    // 登録
    if (context.mounted) {
      await execute(
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
            onTap: () => GroupRouteData(group.id.value).go(context),
            title: Text(
              group.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(ownerData?.name ?? commonI18n.common.unset),
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
      label: commonI18n.common.delete,
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
      label: i18n.group.common.leaveGroup,
    );
  }

  Future<bool> confirmDelete(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final messages = commonI18n.common.deleteConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(name: group.name),
    );
    return result == OkCancelResult.ok;
  }

  Future<bool> confirmLeave(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final messages = i18n.group.common.leaveConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(groupName: group.name),
    );
    return result == OkCancelResult.ok;
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) => execute(
    action: () => ref.read(groupUsecaseProvider).delete(groupId: group.id),
  );

  Future<void> onLeave(BuildContext context, WidgetRef ref) => execute(
    action: () => ref.read(groupUsecaseProvider).leave(groupId: group.id),
  );
}
