// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_join_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定

@ProviderFor(groupJoinUsers)
const groupJoinUsersProvider = GroupJoinUsersFamily._();

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定

final class GroupJoinUsersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<User>>,
          List<User>,
          Stream<List<User>>
        >
    with $FutureModifier<List<User>>, $StreamProvider<List<User>> {
  /// グループに参加中のユーザー情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  const GroupJoinUsersProvider._({
    required GroupJoinUsersFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'groupJoinUsersProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupJoinUsersHash();

  @override
  String toString() {
    return r'groupJoinUsersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<User>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<User>> create(Ref ref) {
    final argument = this.argument as GroupId;
    return groupJoinUsers(ref, groupId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupJoinUsersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupJoinUsersHash() => r'd72df2b96387fcbae2fe379ba8fb14e69c72af5f';

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定

final class GroupJoinUsersFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<User>>, GroupId> {
  const GroupJoinUsersFamily._()
    : super(
        retry: null,
        name: r'groupJoinUsersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  /// グループに参加中のユーザー情報
  /// データの参照頻度を減らすため、`keepAlive`を指定

  GroupJoinUsersProvider call({required GroupId groupId}) =>
      GroupJoinUsersProvider._(argument: groupId, from: this);

  @override
  String toString() => r'groupJoinUsersProvider';
}
