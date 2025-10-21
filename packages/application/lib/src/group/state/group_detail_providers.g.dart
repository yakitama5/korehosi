// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupIdHash() => r'18532e7c3bcce2f437bdcf124bbc0f90b500a3d6';

/// 明細表示対象となるグループのIDを管理するProvider
/// `override`前提の利用を強制する
///
/// Copied from [_groupId].
@ProviderFor(_groupId)
final _groupIdProvider = AutoDisposeProvider<String?>.internal(
  _groupId,
  name: r'_groupIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _GroupIdRef = AutoDisposeProviderRef<String?>;
String _$groupHash() => r'9b114a42e29290d0b7a315739e99b593c7c97459';

/// 明細表示対象となるグループのEntityを管理するProvider
/// `_groupIdProvider`に依存する
///
/// Copied from [_group].
@ProviderFor(_group)
final _groupProvider = AutoDisposeFutureProvider<Group?>.internal(
  _group,
  name: r'_groupProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupHash,
  dependencies: <ProviderOrFamily>[_groupIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _groupIdProvider,
    ...?_groupIdProvider.allTransitiveDependencies,
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _GroupRef = AutoDisposeFutureProviderRef<Group?>;
String _$usersHash() => r'1126ddf7f0389aa77d2fe672898b83152e37335b';

/// グループに参加中のユーザーを管理するProvider
/// `_groupIdProvider`に依存する
///
/// Copied from [_users].
@ProviderFor(_users)
final _usersProvider = AutoDisposeFutureProvider<List<User>>.internal(
  _users,
  name: r'_usersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$usersHash,
  dependencies: <ProviderOrFamily>[_groupIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _groupIdProvider,
    ...?_groupIdProvider.allTransitiveDependencies,
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _UsersRef = AutoDisposeFutureProviderRef<List<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
