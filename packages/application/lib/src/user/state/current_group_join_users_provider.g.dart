// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'current_group_join_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentGroupJoinUsersHash() =>
    r'4acaa26be394a0a5d990cdbe551109f69cc05b3c';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentGroupJoinUsersRef = AutoDisposeFutureProviderRef<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
