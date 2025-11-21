// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループ情報
/// データの参照頻度を減らすため、`keepAlive`を指定

@ProviderFor(group)
const groupProvider = GroupFamily._();

/// グループ情報
/// データの参照頻度を減らすため、`keepAlive`を指定

final class GroupProvider
    extends $FunctionalProvider<AsyncValue<Group?>, Group?, Stream<Group?>>
    with $FutureModifier<Group?>, $StreamProvider<Group?> {
  /// グループ情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  const GroupProvider._({
    required GroupFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'groupProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupHash();

  @override
  String toString() {
    return r'groupProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Group?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Group?> create(Ref ref) {
    final argument = this.argument as GroupId;
    return group(ref, groupId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupHash() => r'65fdd35912a186d27d2097211ae7035445f02894';

/// グループ情報
/// データの参照頻度を減らすため、`keepAlive`を指定

final class GroupFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Group?>, GroupId> {
  const GroupFamily._()
    : super(
        retry: null,
        name: r'groupProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  /// グループ情報
  /// データの参照頻度を減らすため、`keepAlive`を指定

  GroupProvider call({required GroupId groupId}) =>
      GroupProvider._(argument: groupId, from: this);

  @override
  String toString() => r'groupProvider';
}
