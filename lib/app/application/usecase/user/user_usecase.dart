import 'dart:async';

import 'package:family_wish_list/app/application/config/app_config.dart';
import 'package:family_wish_list/app/application/model/flavor.dart';
import 'package:family_wish_list/app/application/usecase/user/state/auth_status_provider.dart';
import 'package:family_wish_list/app/application/usecase/user/state/group_join_users_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/app_in_purchase/interface/app_in_purchase_service.dart';
import '../../../domain/exception/exceptions.dart';
import '../../../domain/service/analytics_service.dart';
import '../../../domain/user/entity/auth_status.dart';
import '../../../domain/user/entity/user.dart';
import '../../../domain/user/interface/user_repository.dart';
import '../../../domain/user/value_object/age_group.dart';
import '../../../utils/logger.dart';
import '../../state/locale_provider.dart';
import '../group/state/current_group_id_provider.dart';
import '../group/state/group_provider.dart';
import '../item/state/items_provider.dart';
import '../purchase/state/purchase_provider.dart';
import '../run_usecase_mixin.dart';
import 'state/auth_user_provider.dart';
import 'state/user_provider.dart';

part 'user_usecase.g.dart';

@riverpod
UserUsecase userUsecase(UserUsecaseRef ref) => UserUsecase(ref);

class UserUsecase with RunUsecaseMixin {
  const UserUsecase(this.ref);

  final Ref ref;

  /// アプリ内購入対応プラットフォームか否か
  bool get _appInPurchasePlatform => !kIsWeb && appConfig.flavor == Flavor.prod;

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
        final l10n = ref.read(l10nProvider);
        final groupName =
            '${name ?? l10n.noName}${l10n.groupInitialNameSuffix}';

        // 登録
        await ref.read(userRepositoryProvider).signUp(
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
        final userId =
            await ref.read(authUserProvider.selectAsync((user) => user?.id));

        // 更新
        await ref.read(userRepositoryProvider).update(
              userId: userId!,
              name: name,
              ageGroup: ageGroup,
            );
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
        final userId =
            await ref.read(authUserProvider.selectAsync((data) => data?.id));
        if (userId == null) {
          throw UpdateTargetNotFoundException();
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

    // アプリ内購入情報の状態を更新
    await _appInPurchaseSignIn();
  }

  /// サインイン後の処理
  /// サインアップの際も含める
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

    final userId =
        await ref.read(authStatusProvider.selectAsync((auth) => auth?.uid));
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
    await Future<void>.delayed(const Duration(milliseconds: 100));
    final joinGroupIds = await ref
        .read(authUserProvider.selectAsync((data) => data?.joinGroupIds));
    if (joinGroupIds == null || joinGroupIds.isEmpty) {
      return;
    }
    final groupId = joinGroupIds.first;
    await ref.read(currentGroupIdProvider.notifier).set(groupId: groupId);
  }

  /// FirestoreのPermissionエラーを避けるために取得データをリフレッシュする
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
