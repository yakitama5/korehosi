// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_group_join_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentGroupJoinUsersHash() =>
    r'ddcc98d4f27b360ce07e496ec187e8b34ff1c286';

/// 現在のグループに所属しているユーザー一覧
///
/// Copied from [currentGroupJoinUsers].
@ProviderFor(currentGroupJoinUsers)
final currentGroupJoinUsersProvider =
    AutoDisposeFutureProvider<List<User>>.internal(
  currentGroupJoinUsers,
  name: r'currentGroupJoinUsersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentGroupJoinUsersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentGroupJoinUsersRef = AutoDisposeFutureProviderRef<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
