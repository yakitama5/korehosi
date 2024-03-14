// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupIdHash() => r'378df480add4a63c1d6d4fb5a39ffda52b4e49f4';

/// 明細表示対象となるグループのIDを管理するProvider
/// `override`前提の利用を強制する
///
/// Copied from [_groupId].
@ProviderFor(_groupId)
final _groupIdProvider = AutoDisposeProvider<String?>.internal(
  _groupId,
  name: r'_groupIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$groupIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _GroupIdRef = AutoDisposeProviderRef<String?>;
String _$groupHash() => r'f44748c6ffd3d886c6d025b6124af0ca65018a9a';

/// 明細表示対象となるグループのEntityを管理するProvider
/// `_groupIdProvider`に依存する
///
/// Copied from [_group].
@ProviderFor(_group)
final _groupProvider = AutoDisposeFutureProvider<Group?>.internal(
  _group,
  name: r'_groupProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$groupHash,
  dependencies: <ProviderOrFamily>[_groupIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _groupIdProvider,
    ...?_groupIdProvider.allTransitiveDependencies
  },
);

typedef _GroupRef = AutoDisposeFutureProviderRef<Group?>;
String _$usersHash() => r'243e0b2cada55fa7c77a16cf144ce23941fa87fb';

/// グループに参加中のユーザーを管理するProvider
/// `_groupIdProvider`に依存する
///
/// Copied from [_users].
@ProviderFor(_users)
final _usersProvider = AutoDisposeFutureProvider<List<User>>.internal(
  _users,
  name: r'_usersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersHash,
  dependencies: <ProviderOrFamily>[_groupIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _groupIdProvider,
    ...?_groupIdProvider.allTransitiveDependencies
  },
);

typedef _UsersRef = AutoDisposeFutureProviderRef<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
