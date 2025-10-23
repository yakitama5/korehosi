import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/auth_status.dart';
import '../entity/user.dart';
import '../value_object/age_group.dart';

part 'user_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
UserRepository userRepository(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// ユーザーモデル および ユーザーの認証に関するリポジトリ
abstract class UserRepository {
  /// ユーザーモデルの取得
  Stream<User?> fetch({required UserId userId});

  /// ユーザーモデルの取得
  /// グループに所属しているユーザーの取得
  Stream<List<User>> fetchByGroupId({required UserId groupId});

  /// ユーザーモデルの更新
  Future<void> update({
    required UserId userId,
    required AgeGroup ageGroup,
    String? name,
  });

  /// サインアップ および ユーザー/グループモデルの追加
  Future<void> signUp({
    required AgeGroup ageGroup,
    String? name,
    required String groupName,
    required bool premium,
  });

  /// ユーザーモデル および 認証アカウントの削除
  Future<void> delete({required UserId userId});

  /// 認証状態の取得
  Stream<AuthStatus?> fetchAuthStatus();

  /// 匿名ログイン
  Future<AuthStatus> signInAnonymously();

  /// Googleアカウントとの連携
  Future<AuthStatus> signInWithGoogle();

  /// Appleアカウントとの連携
  Future<AuthStatus> signInWithApple();

  /// Googleアカウントとの連携を解除
  Future<void> unlinkWithGoogle();

  /// Appleアカウントとの連携を解除
  Future<void> unlinkWithApple();

  /// サインアウト
  Future<void> signOut();
}
