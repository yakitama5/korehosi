import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/i18n/strings.g.dart';
import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_application/src/common/state/app_build_config_provider.dart';
import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/src/group/state/group_provider.dart';
import 'package:packages_application/src/item/state/items_provider.dart';
import 'package:packages_application/src/item/state/purchase_provider.dart';
import 'package:packages_application/src/user/state/auth_status_provider.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_application/src/user/state/group_join_users_provider.dart';
import 'package:packages_application/src/user/state/token_timestamp_provider.dart';
import 'package:packages_application/src/user/state/user_provider.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_usecase.g.dart';

@riverpod
UserUsecase userUsecase(Ref ref) => UserUsecase(ref);

/// ユーザーに関するユースケース
class UserUsecase with RunUsecaseMixin {
  const UserUsecase(this.ref);

  final Ref ref;

  /// アプリ情報
  AppBuildConfig get _appBuildConfig => ref.watch(appBuildConfigProvider);

  /// アプリ内購入対応プラットフォームか否か
  bool get _appInPurchasePlatform =>
      !kIsWeb && _appBuildConfig.flavor == Flavor.prd;

  /// 認証状態の取得
  Stream<AuthStatus?> fetchAuthStatus() =>
      ref.read(userRepositoryProvider).fetchAuthStatus();

  /// ユーザーの取得
  Stream<User?> fetch({required String userId}) =>
      ref.read(userRepositoryProvider).fetch(userId: userId);

  /// グループ内のユーザーの取得
  Stream<List<User>> fetchByGroup({required String groupId}) =>
      ref.read(userRepositoryProvider).fetchByGroupId(groupId: groupId);

  /// ユーザーの登録
  Future<void> signUp({
    required String? name,
    required AgeGroup ageGroup,
  }) async {
    await execute(
      ref,
      action: () async {
        // 内容を元に編集
        final groupName = i18n.group.initialGroupName(
          userName: name ?? i18n.user.user.noname,
        );

        // 登録
        await ref
            .read(userRepositoryProvider)
            .signUp(
              name: name,
              ageGroup: ageGroup,
              groupName: groupName,
              premium: false,
            );

        // 認証状態の変更後の処理を行う
        await _onSignedIn();
      },
    );
  }

  /// ユーザー情報の更新
  Future<void> update({
    required String? name,
    required AgeGroup ageGroup,
  }) async {
    await execute(
      ref,
      action: () async {
        // ログイン中のユーザー情報を取得
        final userId = await ref.read(
          authUserProvider.selectAsync((user) => user?.id),
        );

        // 更新
        await ref
            .read(userRepositoryProvider)
            .update(userId: userId!, name: name, ageGroup: ageGroup);
      },
    );
  }

  /// Apple認証
  Future<void> signInWithApple() async {
    await execute(
      ref,
      action: () async {
        // サインイン
        await ref.read(userRepositoryProvider).signInWithApple();

        // 認証状態の変更後の処理を行う
        await _onSignedIn();
      },
    );
  }

  /// Google認証
  Future<void> signInWithGoogle() async {
    await execute(
      ref,
      action: () async {
        // サインイン
        await ref.read(userRepositoryProvider).signInWithGoogle();

        // 認証状態の変更後の処理を行う
        await _onSignedIn();
      },
    );
  }

  /// サインアウト
  Future<void> signOut() async {
    await execute(
      ref,
      action: () async {
        // サインアウト
        await ref.read(userRepositoryProvider).signOut();

        // 認証状態の変更後の処理を行う
        await _onSignedOut();
      },
    );
  }

  /// ユーザー情報 および アカウントの削除
  Future<void> delete() async {
    await execute(
      ref,
      action: () async {
        // ユーザー情報 および アカウントの削除
        final userId = await ref.read(
          authUserProvider.selectAsync((data) => data?.id),
        );
        if (userId == null) {
          throw const BusinessException(
            BusinessExceptionType.updateTargetNotFound,
          );
        }
        await ref.read(userRepositoryProvider).delete(userId: userId);

        // 認証状態の変更後の処理を行う
        await _onSignedOut();
      },
    );
  }

  /// Googleアカウント連携を解除する
  Future<void> unlinkWithGoogle() => execute(
    ref,
    action: () => ref.read(userRepositoryProvider).unlinkWithGoogle(),
  );

  /// Appleアカウント連携を解除する
  Future<void> unlinkWithApple() => execute(
    ref,
    action: () => ref.read(userRepositoryProvider).unlinkWithApple(),
  );

  /// サインイン後の処理
  /// サインアップの際も含める
  Future<void> _onSignedIn() async {
    // 分析ログの出力
    unawaited(ref.read(analyticsServiceProvider).signedIn());

    // グループ情報を初期化
    await _initCurrentGroup();

    // FCMトークンを追加
    await refreshFCMTokenAndCheckPushPermission();

    // アプリ内購入情報の状態を更新
    await _appInPurchaseSignIn();
  }

  /// サインアウト後の処理
  /// 退会の際も含める
  Future<void> _onSignedOut() async {
    // アプリ内購入情報の状態を更新
    await _appInPurchaseSignOut();

    // 現在のグループ情報などをリフレッシュする
    await ref.read(currentGroupIdProvider.notifier).remove();
    _invalidateStates();
  }

  // アプリ内購入情報にログインを連携
  Future<void> _appInPurchaseSignIn() async {
    // アプリ内購入が対応済のプラットフォームのみ処理する
    if (!_appInPurchasePlatform) {
      return;
    }

    final userId = await ref.read(
      authStatusProvider.selectAsync((auth) => auth?.uid),
    );
    await ref.read(appInPurchaseServiceProvider).signIn(userId: userId!);
  }

  // アプリ内購入情報にログアウトを連携
  Future<void> _appInPurchaseSignOut() async {
    // アプリ内購入が対応済のプラットフォームのみ処理する
    if (!_appInPurchasePlatform) {
      return;
    }

    await ref.read(appInPurchaseServiceProvider).signOut();
  }

  /// 現在のグループ情報を初期化する
  Future<void> _initCurrentGroup() async {
    // 参加中の先頭グループを設定
    await Future<void>.delayed(const Duration(milliseconds: 200));
    final joinGroupIds = await ref.read(
      authUserProvider.selectAsync((data) => data?.joinGroupIds),
    );
    if (joinGroupIds == null || joinGroupIds.isEmpty) {
      return;
    }
    final groupId = joinGroupIds.first;
    await ref.read(currentGroupIdProvider.notifier).set(groupId: groupId);
  }

  /// FCMトークンをリフレッシュし、必要に応じて権限確認を行う
  Future<void> refreshFCMTokenAndCheckPushPermission() async {
    // 未ログインであれば処理しない
    final user = ref.read(authStatusProvider).value;
    if (user == null) {
      return;
    }

    // 権限確認
    unawaited(ref.read(messagingServiceProvider).requestPermission());

    // トークンのリフレッシュ
    await refreshFCMToken(user.uid);
  }

  /// トークンのリフレッシュ
  Future<void> refreshFCMToken(String uid) async {
    // トークンを取得する
    final token = await ref.read(messagingServiceProvider).getToken();
    logger.d('FCM Token is $token');
    if (token == null) {
      return;
    }

    // 前回取得から30日経過している場合のみ処理する
    final tokenTimestamp = await ref.read(
      tokenTimestampProvider(token: token).future,
    );
    final now = DateTime.now();
    if (tokenTimestamp != null &&
        now.add(const Duration(days: -30)).isBefore(tokenTimestamp)) {
      return;
    }

    // トークンが存在しなければ追加、存在すればタイムスタンプを更新する
    await ref
        .read(notificationTokenRepositoryProvider)
        .set(userId: uid, token: token);

    // ローカル上にタイムスタンプを設定
    await ref
        .read(userSessionRepositoryProvider)
        .updateTokenTimestamp(uid: uid, dateTime: now);
  }

  /// Permissionエラーを避けるために、キャッシュしていた取得データをリフレッシュする
  void _invalidateStates() {
    logger.d('Refresh Firestore instance');
    ref
      ..invalidate(userProvider)
      ..invalidate(itemsProvider)
      ..invalidate(purchaseProvider)
      ..invalidate(groupProvider)
      ..invalidate(groupJoinUsersProvider);
  }
}
