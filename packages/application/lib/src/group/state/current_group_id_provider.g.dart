// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'current_group_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 現在のグループID
// @Riverpod(keepAlive: true)
// Future<String?> currentGroupId(CurrentGroupIdRef ref) =>
//     ref.read(groupUsecaseProvider).fetchCurrentGroupId();
/// 現在のグループID

@ProviderFor(CurrentGroupId)
const currentGroupIdProvider = CurrentGroupIdProvider._();

/// 現在のグループID
// @Riverpod(keepAlive: true)
// Future<String?> currentGroupId(CurrentGroupIdRef ref) =>
//     ref.read(groupUsecaseProvider).fetchCurrentGroupId();
/// 現在のグループID
final class CurrentGroupIdProvider
    extends $AsyncNotifierProvider<CurrentGroupId, GroupId?> {
  /// 現在のグループID
  // @Riverpod(keepAlive: true)
  // Future<String?> currentGroupId(CurrentGroupIdRef ref) =>
  //     ref.read(groupUsecaseProvider).fetchCurrentGroupId();
  /// 現在のグループID
  const CurrentGroupIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentGroupIdProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentGroupIdHash();

  @$internal
  @override
  CurrentGroupId create() => CurrentGroupId();
}

String _$currentGroupIdHash() => r'e5a949fab98258d4b7543cb4f468f76e265b624c';

/// 現在のグループID
// @Riverpod(keepAlive: true)
// Future<String?> currentGroupId(CurrentGroupIdRef ref) =>
//     ref.read(groupUsecaseProvider).fetchCurrentGroupId();
/// 現在のグループID

abstract class _$CurrentGroupId extends $AsyncNotifier<GroupId?> {
  FutureOr<GroupId?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<GroupId?>, GroupId?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GroupId?>, GroupId?>,
              AsyncValue<GroupId?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
