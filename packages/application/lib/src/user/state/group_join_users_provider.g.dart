// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_join_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupJoinUsersHash() => r'3f58d912439ca7f5d3b56b646e5ac397fbafabba';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [groupJoinUsers].
@ProviderFor(groupJoinUsers)
const groupJoinUsersProvider = GroupJoinUsersFamily();

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [groupJoinUsers].
class GroupJoinUsersFamily extends Family<AsyncValue<List<User>>> {
  /// グループに参加中のユーザー情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [groupJoinUsers].
  const GroupJoinUsersFamily();

  /// グループに参加中のユーザー情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [groupJoinUsers].
  GroupJoinUsersProvider call({required String groupId}) {
    return GroupJoinUsersProvider(groupId: groupId);
  }

  @override
  GroupJoinUsersProvider getProviderOverride(
    covariant GroupJoinUsersProvider provider,
  ) {
    return call(groupId: provider.groupId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupJoinUsersProvider';
}

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [groupJoinUsers].
class GroupJoinUsersProvider extends StreamProvider<List<User>> {
  /// グループに参加中のユーザー情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [groupJoinUsers].
  GroupJoinUsersProvider({required String groupId})
    : this._internal(
        (ref) => groupJoinUsers(ref as GroupJoinUsersRef, groupId: groupId),
        from: groupJoinUsersProvider,
        name: r'groupJoinUsersProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$groupJoinUsersHash,
        dependencies: GroupJoinUsersFamily._dependencies,
        allTransitiveDependencies:
            GroupJoinUsersFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  GroupJoinUsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final String groupId;

  @override
  Override overrideWith(
    Stream<List<User>> Function(GroupJoinUsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GroupJoinUsersProvider._internal(
        (ref) => create(ref as GroupJoinUsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
      ),
    );
  }

  @override
  StreamProviderElement<List<User>> createElement() {
    return _GroupJoinUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupJoinUsersProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GroupJoinUsersRef on StreamProviderRef<List<User>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _GroupJoinUsersProviderElement extends StreamProviderElement<List<User>>
    with GroupJoinUsersRef {
  _GroupJoinUsersProviderElement(super.provider);

  @override
  String get groupId => (origin as GroupJoinUsersProvider).groupId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
