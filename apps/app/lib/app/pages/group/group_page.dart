import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/premium_icon_container.dart';
import 'package:flutter_app/app/pages/group/components/share_group_bottom_sheet.dart';
import 'package:flutter_app/app/pages/item/components/list_loader_view.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/user.dart';

class GroupPage extends HookConsumerWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    final group = ref.watch(GroupDetailProviders.groupProvider);

    return group.when(
      skipLoadingOnReload: true,
      data: (groupData) {
        if (groupData == null) {
          return const ErrorView(
            BusinessException(BusinessExceptionType.deleted),
            null,
          );
        }

        return Scaffold(
          body: Scrollbar(
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  title: PremiumPrefixContainer(
                    premium: groupData.premium,
                    child: Text(
                      groupData.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  actions: const [
                    _SelectButton(),
                    _EditButton(),
                    _DeleteButton(),
                    _LeaveButton(),
                  ],
                ),
                const _PremiumPlanButton(),
                const _SliverBody(),
              ],
            ),
          ),
          floatingActionButton: const _Fab(),
        );
      },
      error: ErrorView.new,
      // 一瞬なので何も表示しない
      loading: () => const SizedBox.shrink(),
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(GroupDetailProviders.usersProvider);

    return users.when(
      // 画面のちらつきを抑えるため、フィルターやリアルタイム反映はローディングを挟まない
      skipLoadingOnReload: true,
      data: (usersData) => SliverPadding(
        padding: const EdgeInsets.only(bottom: 120),
        sliver: SliverList.separated(
          itemCount: usersData.length,
          itemBuilder: (context, index) => _ListTile(usersData[index]),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
      error: (error, stackTrace) =>
          SliverFillRemaining(child: ErrorView(error, stackTrace)),
      loading: () => const SliverFillRemaining(child: ListLoaderView()),
    );
  }
}

class _PremiumPlanButton extends HookConsumerWidget with PresentationMixin {
  const _PremiumPlanButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Web以外のプラットフォームで参加済でないユーザーに表示
    final premiumed = ref.watch(
      GroupDetailProviders.groupProvider.select(
        (value) => value.value?.premium == true,
      ),
    );

    return SliverVisibility(
      visible: !premiumed && !kIsWeb,
      sliver: SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverToBoxAdapter(
          child: FilledButton.icon(
            onPressed: () => onPremium(context, ref),
            label: Text(i18n.group.groupPage.limitBreak),
            icon: Icon(MdiIcons.crown),
          ),
        ),
      ),
    );
  }

  Future<void> onPremium(BuildContext context, WidgetRef ref) async {
    final group = await ref.read(GroupDetailProviders.groupProvider.future);
    if (group == null && context.mounted) {
      SnackBarManager.showErrorSnackBar(
        commonI18n.exceptions.errorMessage.unexpected,
      );
      return;
    }

    // 商品情報の取得
    final usecase = ref.read(groupUsecaseProvider);
    final product = await usecase.fetchLimitedReleasePlan();

    final price = NumberFormat.decimalPattern().format(
      product?.price,
    );

    if (!context.mounted) {
      return;
    }
    final messages = i18n.group.groupPage.appInPurchaseConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      okLabel: messages.okLabel(price: price),
      message: messages.message(price: price),
    );

    if (result != OkCancelResult.ok) {
      return;
    }

    // SnackBarの表示は`listen`を用いて行うため、ここでは不要
    if (context.mounted) {
      await execute(
        action: () => ref
            .read(groupUsecaseProvider)
            .upgradeLimitedReleasePlan(groupId: group!.id),
        successMessage: i18n.group.groupPage.limitBreakPurchased,
      );
    }
  }
}

class _Fab extends HookConsumerWidget with PresentationMixin {
  const _Fab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WebはDynamicLinksが非対応なので表示しない
    if (kIsWeb) {
      return const SizedBox.shrink();
    }

    return FloatingActionButton.extended(
      onPressed: () => onShare(context, ref),
      icon: const Icon(Icons.share),
      label: Text(i18n.group.groupPage.shareGroup),
    );
  }

  Future<void> onShare(BuildContext context, WidgetRef ref) async {
    // DynamicLinkの作成 (完了するまでローディング表示)
    await execute(
      action: () async {
        final group = await ref.read(GroupDetailProviders.groupProvider.future);
        final url = await ref
            .read(groupUsecaseProvider)
            .buildShareLink(
              groupId: group!.id,
              locationBuilder: (shareLinkId) =>
                  ShareLinkRouteData(shareLinkId).location,
            );

        // ボトムシートの表示 (QRコード表示)
        if (context.mounted) {
          return ShareGroupBottomSheet.show(
            context: context,
            groupName: group.name,
            shareUrl: url,
          );
        }
      },
    );
  }
}

class _ListTile extends HookWidget {
  const _ListTile(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.dispName, maxLines: 2, overflow: TextOverflow.ellipsis),
      subtitle: Text(commonI18n.kEnum.ageGroup(context: user.ageGroup)),
    );
  }
}

///
/// Action
///

class _SelectButton extends HookConsumerWidget with PresentationMixin {
  const _SelectButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 表示中のグループの場合はボタンを表示しない
    final currentGroupId = ref.watch(currentGroupIdProvider).value;
    final groupId = ref.watch(GroupDetailProviders.groupIdProvider);
    if (currentGroupId == groupId) {
      return const SizedBox.shrink();
    }

    return IconButton(
      onPressed: () => onSelect(context, ref),
      icon: const Icon(Icons.check_circle_outline_outlined),
      tooltip: i18n.group.groupPage.select,
    );
  }

  Future<void> onSelect(BuildContext context, WidgetRef ref) async {
    // カレント情報を更新するだけ
    final groupId = ref.watch(GroupDetailProviders.groupIdProvider);
    if (groupId == null) {
      return;
    }

    await execute(
      action: () async {
        await ref
            .read(groupUsecaseProvider)
            .setCurrentGroupId(groupId: groupId);
      },
    );
  }
}

class _EditButton extends HookConsumerWidget with PresentationMixin {
  const _EditButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => onEdit(context, ref),
      icon: const Icon(Icons.edit),
      tooltip: commonI18n.common.edit,
    );
  }

  Future<void> onEdit(BuildContext context, WidgetRef ref) async {
    await execute(
      action: () async {
        // 初期値の取得
        final prev = await ref.read(GroupDetailProviders.groupProvider.future);
        if (!context.mounted) {
          return;
        }

        // 値の入力 (ダイアログ表示)
        final resultList = await showTextInputDialog(
          context: context,
          title: i18n.group.common.groupName,
          textFields: [
            DialogTextField(
              initialText: prev!.name,
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
        // キャンセルされていれば(入力値がなければ)後続の処理は行わない
        final inputName = resultList?.firstOrNull;
        if (inputName == null || inputName.isEmpty) {
          return;
        }

        // 更新
        await ref
            .read(groupUsecaseProvider)
            .update(groupId: prev.id, name: inputName);
      },
    );
  }
}

class _DeleteButton extends HookConsumerWidget with PresentationMixin {
  const _DeleteButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 作成者のみ表示
    final ownerUserId = ref.watch(
      GroupDetailProviders.groupProvider.select(
        (asyncValue) => asyncValue.value?.ownerUid,
      ),
    );
    final userId = ref.watch(
      authUserProvider.select((value) => value.value?.id),
    );
    if (userId != ownerUserId) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;
    return IconButton(
      onPressed: () => onDelete(context, ref),
      icon: Icon(Icons.delete, color: colorScheme.error),
      tooltip: commonI18n.common.delete,
    );
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);

    // 削除確認
    final messages = commonI18n.common.deleteConfirmDialog;
    final group = ref.read(GroupDetailProviders.groupProvider).value;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(name: group?.name ?? ''),
    );
    if (result != OkCancelResult.ok) {
      return;
    }

    // 削除処理
    if (!context.mounted) {
      return;
    }
    await execute(
      action: () async {
        await ref.read(groupUsecaseProvider).delete(groupId: group!.id);

        navigator.pop();
      },
    );
  }
}

class _LeaveButton extends HookConsumerWidget with PresentationMixin {
  const _LeaveButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 参加者のみ表示
    final ownerUserId = ref.watch(
      GroupDetailProviders.groupProvider.select(
        (asyncValue) => asyncValue.value?.ownerUid,
      ),
    );
    final userId = ref.watch(
      authUserProvider.select((value) => value.value?.id),
    );
    if (userId == ownerUserId) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;
    return IconButton(
      onPressed: () => onLeave(context, ref),
      icon: Icon(Icons.person_off, color: colorScheme.error),
      tooltip: i18n.group.common.leaveGroup,
    );
  }

  Future<void> onLeave(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);

    // 離脱確認
    final messages = i18n.group.common.leaveConfirmDialog;
    final group = ref.read(GroupDetailProviders.groupProvider).value;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(groupName: group?.name ?? ''),
    );
    if (result != OkCancelResult.ok) {
      return;
    }

    if (!context.mounted) {
      return;
    }
    await execute(
      action: () async {
        await ref.read(groupUsecaseProvider).leave(groupId: group!.id);

        navigator.pop();
      },
    );
  }
}
