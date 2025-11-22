// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 明細表示対象となるグループのIDを管理するProvider
/// `override`前提の利用を強制する

@ProviderFor(detailPageGroupId)
const _groupIdProvider = DetailPageGroupIdProvider._();

/// 明細表示対象となるグループのIDを管理するProvider
/// `override`前提の利用を強制する

final class DetailPageGroupIdProvider
    extends $FunctionalProvider<GroupId?, GroupId?, GroupId?>
    with $Provider<GroupId?> {
  /// 明細表示対象となるグループのIDを管理するProvider
  /// `override`前提の利用を強制する
  const DetailPageGroupIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_groupIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$detailPageGroupIdHash();

  @$internal
  @override
  $ProviderElement<GroupId?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GroupId? create(Ref ref) {
    return detailPageGroupId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GroupId? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GroupId?>(value),
    );
  }
}

String _$detailPageGroupIdHash() => r'9ff9f4e14f1fea43d63250d653b80bf9dfb6cfcb';

/// 明細表示対象となるグループのEntityを管理するProvider
/// `_groupIdProvider`に依存する

@ProviderFor(detailPageGroup)
const _groupProvider = DetailPageGroupProvider._();

/// 明細表示対象となるグループのEntityを管理するProvider
/// `_groupIdProvider`に依存する

final class DetailPageGroupProvider
    extends $FunctionalProvider<AsyncValue<Group?>, Group?, FutureOr<Group?>>
    with $FutureModifier<Group?>, $FutureProvider<Group?> {
  /// 明細表示対象となるグループのEntityを管理するProvider
  /// `_groupIdProvider`に依存する
  const DetailPageGroupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_groupProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[_groupIdProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          DetailPageGroupProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = _groupIdProvider;

  @override
  String debugGetCreateSourceHash() => _$detailPageGroupHash();

  @$internal
  @override
  $FutureProviderElement<Group?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Group?> create(Ref ref) {
    return detailPageGroup(ref);
  }
}

String _$detailPageGroupHash() => r'd6814e834b351cbec8928dbed0f08c1ed775f8e3';

/// グループに参加中のユーザーを管理するProvider
/// `_groupIdProvider`に依存する

@ProviderFor(detailPageUsers)
const _usersProvider = DetailPageUsersProvider._();

/// グループに参加中のユーザーを管理するProvider
/// `_groupIdProvider`に依存する

final class DetailPageUsersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<User>>,
          List<User>,
          FutureOr<List<User>>
        >
    with $FutureModifier<List<User>>, $FutureProvider<List<User>> {
  /// グループに参加中のユーザーを管理するProvider
  /// `_groupIdProvider`に依存する
  const DetailPageUsersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_usersProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[_groupIdProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          DetailPageUsersProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = _groupIdProvider;

  @override
  String debugGetCreateSourceHash() => _$detailPageUsersHash();

  @$internal
  @override
  $FutureProviderElement<List<User>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<User>> create(Ref ref) {
    return detailPageUsers(ref);
  }
}

String _$detailPageUsersHash() => r'280c942c99e1561f4c3062f43463f3c978bb385e';
