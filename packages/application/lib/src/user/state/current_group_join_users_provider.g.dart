// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'current_group_join_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 現在のグループに所属しているユーザー一覧

@ProviderFor(currentGroupJoinUsers)
const currentGroupJoinUsersProvider = CurrentGroupJoinUsersProvider._();

/// 現在のグループに所属しているユーザー一覧

final class CurrentGroupJoinUsersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<User>>,
          List<User>,
          FutureOr<List<User>>
        >
    with $FutureModifier<List<User>>, $FutureProvider<List<User>> {
  /// 現在のグループに所属しているユーザー一覧
  const CurrentGroupJoinUsersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentGroupJoinUsersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentGroupJoinUsersHash();

  @$internal
  @override
  $FutureProviderElement<List<User>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<User>> create(Ref ref) {
    return currentGroupJoinUsers(ref);
  }
}

String _$currentGroupJoinUsersHash() =>
    r'4acaa26be394a0a5d990cdbe551109f69cc05b3c';
