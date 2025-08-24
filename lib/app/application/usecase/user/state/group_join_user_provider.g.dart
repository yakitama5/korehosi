// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_join_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupJoinUserHash() => r'6d8832b41894fb232bdb37ed04a3f55664af94b2';

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
///
/// Copied from [groupJoinUser].
@ProviderFor(groupJoinUser)
const groupJoinUserProvider = GroupJoinUserFamily();

/// グループに参加中のユーザー情報
///
/// Copied from [groupJoinUser].
class GroupJoinUserFamily extends Family<AsyncValue<User?>> {
  /// グループに参加中のユーザー情報
  ///
  /// Copied from [groupJoinUser].
  const GroupJoinUserFamily();

  /// グループに参加中のユーザー情報
  ///
  /// Copied from [groupJoinUser].
  GroupJoinUserProvider call({
    required String groupId,
    required String userId,
  }) {
    return GroupJoinUserProvider(
      groupId: groupId,
      userId: userId,
    );
  }

  @override
  GroupJoinUserProvider getProviderOverride(
    covariant GroupJoinUserProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
      userId: provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupJoinUserProvider';
}

/// グループに参加中のユーザー情報
///
/// Copied from [groupJoinUser].
class GroupJoinUserProvider extends AutoDisposeFutureProvider<User?> {
  /// グループに参加中のユーザー情報
  ///
  /// Copied from [groupJoinUser].
  GroupJoinUserProvider({
    required String groupId,
    required String userId,
  }) : this._internal(
          (ref) => groupJoinUser(
            ref as GroupJoinUserRef,
            groupId: groupId,
            userId: userId,
          ),
          from: groupJoinUserProvider,
          name: r'groupJoinUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupJoinUserHash,
          dependencies: GroupJoinUserFamily._dependencies,
          allTransitiveDependencies:
              GroupJoinUserFamily._allTransitiveDependencies,
          groupId: groupId,
          userId: userId,
        );

  GroupJoinUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.userId,
  }) : super.internal();

  final String groupId;
  final String userId;

  @override
  Override overrideWith(
    FutureOr<User?> Function(GroupJoinUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GroupJoinUserProvider._internal(
        (ref) => create(ref as GroupJoinUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User?> createElement() {
    return _GroupJoinUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupJoinUserProvider &&
        other.groupId == groupId &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GroupJoinUserRef on AutoDisposeFutureProviderRef<User?> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _GroupJoinUserProviderElement
    extends AutoDisposeFutureProviderElement<User?> with GroupJoinUserRef {
  _GroupJoinUserProviderElement(super.provider);

  @override
  String get groupId => (origin as GroupJoinUserProvider).groupId;
  @override
  String get userId => (origin as GroupJoinUserProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
