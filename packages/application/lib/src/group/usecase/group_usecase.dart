import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/common/config/web_app_config.dart';
import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_application/src/group/config/group_config.dart';
import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/src/group/state/group_provider.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_domain/common.dart' hide BusinessException;
import 'package:packages_domain/exception.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_usecase.g.dart';

@riverpod
GroupUsecase groupUsecase(Ref ref) => GroupUsecase(ref);

typedef LocationBuilder = String Function(String shareLinkId);

/// グループに関するユースケース
class GroupUsecase with RunUsecaseMixin {
  const GroupUsecase(this.ref);

  final Ref ref;

  /// グループを取得
  Stream<Group?> fetch({required String groupId}) =>
      ref.read(groupRepositoryProvider).fetch(groupId: groupId);

  /// 現在のグループを取得
  Future<String?> fetchCurrentGroupId() async {
    return ref.read(userSessionRepositoryProvider).fetchCurrentGroupId();
  }

  /// 現在のグループを設定
  Future<void> setCurrentGroupId({required String groupId}) => execute(
    ref,
    action: () =>
        ref.read(currentGroupIdProvider.notifier).set(groupId: groupId),
  );

  /// 現在のグループを削除
  Future<void> removeCurrentGroupId() => execute(
    ref,
    action: () => ref.read(currentGroupIdProvider.notifier).remove(),
  );

  /// グループを追加
  Future<void> add({required String name}) async {
    await execute(
      ref,
      action: () async {
        // 現在のユーザー情報を取得
        final userId = await ref.read(
          authUserProvider.selectAsync((data) => data?.id),
        );
        if (userId == null) {
          return;
        }

        // 登録
        await ref
            .read(groupRepositoryProvider)
            .add(
              name: name,
              joinUids: [userId],
              ownerUid: userId,
              itemCount: groupConfig.initialItemCount,
              premium: groupConfig.initialPremium,
            );
      },
    );
  }

  /// グループを更新
  Future<void> update({required String groupId, required String name}) async {
    // 更新
    await execute(
      ref,
      action: () => ref
          .read(groupRepositoryProvider)
          .update(groupId: groupId, name: name),
    );
  }

  /// グループを削除
  Future<void> delete({required String groupId}) => execute(
    ref,
    action: () => ref.read(groupRepositoryProvider).delete(groupId: groupId),
  );

  /// グループから脱退
  Future<void> leave({required String groupId}) => execute(
    ref,
    action: () => ref.read(groupUsecaseProvider).leave(groupId: groupId),
  );

  /// グループの欲しい物上限を解放する
  Future<void> upgradeLimitedReleasePlan({required String groupId}) async {
    await execute(
      ref,
      action: () async {
        // 対象の取得
        final group = await ref.read(groupProvider(groupId: groupId).future);
        if (group == null) {
          throw UpdateTargetNotFoundException();
        }

        // アプリ内課金を行う
        await ref
            .read(appInPurchaseServiceProvider)
            .purchaseLimitedReleasePlan();

        // アプリ内の購入ステータスを更新
        await ref
            .read(groupRepositoryProvider)
            .update(groupId: groupId, name: group.name);
      },
    );
  }

  /// グループに参加する
  Future<void> joinGroup({required String shareLinkId}) => execute(
    ref,
    action: () async {
      final code = await ref
          .read(groupRepositoryProvider)
          .joinGroup(shareLinkId: shareLinkId);

      switch (code) {
        case null:
          // do nothing
          break;
        case JoinGroupErrorCode.joinedGroup:
          throw BusinessException(i18n.app.joinGroupErrorMessageJoinedGroup);
        case JoinGroupErrorCode.notAuth:
          throw BusinessException(i18n.app.joinGroupErrorMessageNotAuth);
        case JoinGroupErrorCode.invalidDate:
          throw BusinessException(i18n.app.joinGroupErrorMessageInvalidDate);
        case JoinGroupErrorCode.overCount:
          throw BusinessException(i18n.app.joinGroupErrorMessageLimitOver);
        case JoinGroupErrorCode.invalidRequest:
          throw BusinessException(
            i18n.app.joinGroupErrorMessageInvalidShareLink,
          );
      }
    },
    // 画面自体がローディング表示のため、ローディング表示を別途行わない
    disableLoading: true,
  );

  /// グループの共有リンクを生成する
  Future<String> buildShareLink({
    required String groupId,
    // 画面のパスはあくまでプレゼンテーション層に依存するので、builderで指定してもらう
    required LocationBuilder locationBuilder,
  }) => execute(
    ref,
    action: () async {
      // 共有リンク用のデータを登録
      final shareLinkId = await ref
          .read(groupRepositoryProvider)
          .addShareLink(groupId: groupId, validDays: groupConfig.validDays);

      // DynamicLinkの作成
      final path = locationBuilder(shareLinkId);
      final uri = Uri.parse(webAppConfig.appWebUrL + path);
      return ref.read(deepLinkServiceProvider).buildLink(uri: uri);
    },
  );
}
