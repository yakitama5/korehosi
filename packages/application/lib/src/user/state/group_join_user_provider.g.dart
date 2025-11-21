// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_join_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループに参加中のユーザー情報

@ProviderFor(groupJoinUser)
const groupJoinUserProvider = GroupJoinUserFamily._();

/// グループに参加中のユーザー情報

final class GroupJoinUserProvider
    extends $FunctionalProvider<AsyncValue<User?>, User?, FutureOr<User?>>
    with $FutureModifier<User?>, $FutureProvider<User?> {
  /// グループに参加中のユーザー情報
  const GroupJoinUserProvider._({
    required GroupJoinUserFamily super.from,
    required ({GroupId groupId, UserId userId}) super.argument,
  }) : super(
         retry: null,
         name: r'groupJoinUserProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupJoinUserHash();

  @override
  String toString() {
    return r'groupJoinUserProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User?> create(Ref ref) {
    final argument = this.argument as ({GroupId groupId, UserId userId});
    return groupJoinUser(
      ref,
      groupId: argument.groupId,
      userId: argument.userId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GroupJoinUserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupJoinUserHash() => r'f082c93ca38b21e5733930102d21708b93356769';

/// グループに参加中のユーザー情報

final class GroupJoinUserFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<User?>,
          ({GroupId groupId, UserId userId})
        > {
  const GroupJoinUserFamily._()
    : super(
        retry: null,
        name: r'groupJoinUserProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// グループに参加中のユーザー情報

  GroupJoinUserProvider call({
    required GroupId groupId,
    required UserId userId,
  }) => GroupJoinUserProvider._(
    argument: (groupId: groupId, userId: userId),
    from: this,
  );

  @override
  String toString() => r'groupJoinUserProvider';
}
