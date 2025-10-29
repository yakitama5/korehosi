// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'current_group_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentGroupIdHash() => r'907b104288ec36c50c379a52489cde298096ddeb';

/// 現在のグループID
/// 現在のグループID
///
/// Copied from [CurrentGroupId].
@ProviderFor(CurrentGroupId)
final currentGroupIdProvider =
    AsyncNotifierProvider<CurrentGroupId, GroupId?>.internal(
      CurrentGroupId.new,
      name: r'currentGroupIdProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentGroupIdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CurrentGroupId = AsyncNotifier<GroupId?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
