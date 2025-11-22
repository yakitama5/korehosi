// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'join_groups_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 認証ユーザーの参加グループの一覧

@ProviderFor(joinGroups)
const joinGroupsProvider = JoinGroupsProvider._();

/// 認証ユーザーの参加グループの一覧

final class JoinGroupsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Group>?>,
          List<Group>?,
          FutureOr<List<Group>?>
        >
    with $FutureModifier<List<Group>?>, $FutureProvider<List<Group>?> {
  /// 認証ユーザーの参加グループの一覧
  const JoinGroupsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'joinGroupsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$joinGroupsHash();

  @$internal
  @override
  $FutureProviderElement<List<Group>?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Group>?> create(Ref ref) {
    return joinGroups(ref);
  }
}

String _$joinGroupsHash() => r'46cc416bdf238bf31c7ed3fd2a471d43cf09ac6c';
