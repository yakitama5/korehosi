// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_groups_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$joinGroupsHash() => r'591d89a638c18d898c7436ac85f3a2931f176c4d';

/// 認証ユーザーの参加グループの一覧
///
/// Copied from [joinGroups].
@ProviderFor(joinGroups)
final joinGroupsProvider = AutoDisposeFutureProvider<List<Group>?>.internal(
  joinGroups,
  name: r'joinGroupsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$joinGroupsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef JoinGroupsRef = AutoDisposeFutureProviderRef<List<Group>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
