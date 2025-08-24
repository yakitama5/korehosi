import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import '../../../application/model/dialog_result.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/group/group_usecase.dart';
import '../../../application/usecase/group/state/current_group_id_provider.dart';
import '../../../application/usecase/group/state/group_detail_providers.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../domain/user/entity/user.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../components/importer.dart';
import '../../hooks/src/use_l10n.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import '../item/components/list_loader_view.dart';
import '../presentation_mixin.dart';
import 'components/premium_icon_container.dart';
import 'components/share_group_bottom_sheet.dart';

class GroupPage extends HookConsumerWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final scrollController = useScrollController();

    final group = ref.watch(GroupDetailProviders.groupProvider);

    return group.when(
      skipLoadingOnReload: true,
      data: (groupData) {
        if (groupData == null) {
          return ErrorView(l10n.deletedMessage, null);
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
      error: (error, stackTrace) => SliverFillRemaining(
        child: ErrorView(error, stackTrace),
      ),
      loading: () => const SliverFillRemaining(
        child: ListLoaderView(),
      ),
    );
  }
}

class _PremiumPlanButton extends HookConsumerWidget with PresentationMixin {
  const _PremiumPlanButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Web以外のプラットフォームで参加済でないユーザーに表示
    final premiumed = ref.watch(
      GroupDetailProviders.groupProvider
          .select((value) => value.value?.premium == true),
    );

    final l10n = useL10n();

    return SliverVisibility(
      visible: !premiumed && !kIsWeb,
      sliver: SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverToBoxAdapter(
          child: FilledButton.icon(
            onPressed: () => onPremium(context, ref),
            label: Text(l10n.joinPremiumGroup),
            icon: Icon(MdiIcons.crown),
          ),
        ),
      ),
    );
  }

  Future<void> onPremium(BuildContext context, WidgetRef ref) async {
    final l10n = ref.read(l10nProvider);
    final group = await ref.read(GroupDetailProviders.groupProvider.future);
    if (group == null && context.mounted) {
      ErrorSnackBar.show(
        ScaffoldMessenger.of(context),
        message: l10n.unexpectedErrorMessage,
      );
      return;
    }
    try {
      // 商品情報の取得
      final offerings = await Purchases.getOfferings();
      final package = offerings.all['familyWishList_once_premiumGroup_100']
          ?.getPackage('premiumGroups');
      final price =
          NumberFormat.decimalPattern().format(package?.storeProduct.price);

      if (!context.mounted) {
        return;
      }
      final result = await showAdaptiveOkCancelDialog(
        context,
        title: l10n.itemPurchase,
        okLabel: l10n.purchaseOkLabel(price),
        message: l10n.itemLimitReleaseMessage(l10n.lifeful, price),
      );

      if (result != DialogResult.ok) {
        return;
      }

      // SnackBarの表示は`listen`を用いて行うため、ここでは不要
      if (context.mounted) {
        await execute(
          context,
          action: () => ref
              .read(groupUsecaseProvider)
              .upgradeLimitedReleasePlan(groupId: group!.id),
          successMessage: l10n.joinedPremiumGroup,
        );
      }
    } on PlatformException catch (e) {
      // キャンセルした場合に限り、何もしない
      final errorCode = PurchasesErrorHelper.getErrorCode(e);
      if (errorCode != PurchasesErrorCode.purchaseCancelledError) {
        if (context.mounted) {
          ErrorSnackBar.show(
            ScaffoldMessenger.of(context),
            message: l10n.unexpectedErrorMessage,
          );
        }
      }
    } on Exception {
      if (context.mounted) {
        ErrorSnackBar.show(
          ScaffoldMessenger.of(context),
          message: l10n.unexpectedErrorMessage,
        );
      }
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

    final l10n = useL10n();

    return FloatingActionButton.extended(
      onPressed: () => onShare(context, ref),
      icon: const Icon(Icons.share),
      label: Text(l10n.share),
    );
  }

  Future<void> onShare(BuildContext context, WidgetRef ref) async {
    // DynamicLinkの作成 (完了するまでローディング表示)
    await execute(
      context,
      action: () async {
        final group = await ref.read(GroupDetailProviders.groupProvider.future);
        final url = await ref.read(groupUsecaseProvider).buildShareLink(
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
    final l10n = useL10n();

    return ListTile(
      title: Text(
        user.dispName(l10n),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        user.ageGroup.getLocaleName(l10n),
      ),
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

    final l10n = useL10n();

    return IconButton(
      onPressed: () => onSelect(context, ref),
      icon: const Icon(Icons.check_circle_outline_outlined),
      tooltip: l10n.select,
    );
  }

  Future<void> onSelect(BuildContext context, WidgetRef ref) async {
    // カレント情報を更新するだけ
    final groupId = ref.watch(GroupDetailProviders.groupIdProvider);
    if (groupId == null) {
      return;
    }

    await execute(
      context,
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
    final l10n = useL10n();

    return IconButton(
      onPressed: () => onEdit(context, ref),
      icon: const Icon(Icons.edit),
      tooltip: l10n.edit,
    );
  }

  Future<void> onEdit(BuildContext context, WidgetRef ref) async {
    await execute(
      context,
      action: () async {
        // 初期値の取得
        final prev = await ref.read(GroupDetailProviders.groupProvider.future);
        if (!context.mounted) {
          return;
        }

        // 値の入力 (ダイアログ表示)
        final l10n = ref.read(l10nProvider);
        final result = await showAdaptiveTextDialog(
          context,
          title: l10n.groupName,
          initial: prev!.name,
          labelText: l10n.groupName,
          maxLength: 40,
          okLabel: l10n.save,
          isRequired: true,
        );
        if (result == null || result.isEmpty) {
          return;
        }

        // 更新
        await ref
            .read(groupUsecaseProvider)
            .update(groupId: prev.name, name: result);
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
      GroupDetailProviders.groupProvider
          .select((asyncValue) => asyncValue.value?.ownerUid),
    );
    final userId =
        ref.watch(authUserProvider.select((value) => value.value?.id));
    if (userId != ownerUserId) {
      return const SizedBox.shrink();
    }

    final l10n = useL10n();
    final colorScheme = Theme.of(context).colorScheme;
    return IconButton(
      onPressed: () => onDelete(context, ref),
      icon: Icon(
        Icons.delete,
        color: colorScheme.error,
      ),
      tooltip: l10n.delete,
    );
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final l10n = ref.read(l10nProvider);
    final group = ref.read(GroupDetailProviders.groupProvider).value;
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.deleteConfirmTitle,
      message: l10n.deleteGroupCofirmMessage(group?.name ?? ''),
    );
    if (result != DialogResult.ok) {
      return;
    }

    // 削除処理
    if (!context.mounted) {
      return;
    }
    await execute(
      context,
      action: () async {
        await ref.read(groupUsecaseProvider).delete(groupId: group!.id);

        if (context.mounted) {
          context.pop();
        }
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
      GroupDetailProviders.groupProvider
          .select((asyncValue) => asyncValue.value?.ownerUid),
    );
    final userId =
        ref.watch(authUserProvider.select((value) => value.value?.id));
    if (userId == ownerUserId) {
      return const SizedBox.shrink();
    }

    final l10n = useL10n();
    final colorScheme = Theme.of(context).colorScheme;
    return IconButton(
      onPressed: () => onLeave(context, ref),
      icon: Icon(
        Icons.person_off,
        color: colorScheme.error,
      ),
      tooltip: l10n.leave,
    );
  }

  Future<void> onLeave(BuildContext context, WidgetRef ref) async {
    // 離脱確認
    final l10n = ref.read(l10nProvider);
    final group = ref.read(GroupDetailProviders.groupProvider).value;
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.leaveConfirmTitle,
      message: l10n.leaveCofirmMessage(group?.name ?? ''),
    );
    if (result != DialogResult.ok) {
      return;
    }

    if (!context.mounted) {
      return;
    }
    await execute(
      context,
      action: () async {
        await ref.read(groupUsecaseProvider).leave(groupId: group!.id);

        if (context.mounted) {
          context.pop();
        }
      },
    );
  }
}
