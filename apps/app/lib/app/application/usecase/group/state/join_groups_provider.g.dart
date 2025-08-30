// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_groups_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$joinGroupsHash() => r'5af4e8c7fed5250aa60734dec23ed314e858e3d8';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef JoinGroupsRef = AutoDisposeFutureProviderRef<List<Group>?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
