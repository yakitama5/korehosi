// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'current_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 現在のグループ情報

@ProviderFor(currentGroup)
const currentGroupProvider = CurrentGroupProvider._();

/// 現在のグループ情報

final class CurrentGroupProvider
    extends $FunctionalProvider<AsyncValue<Group?>, Group?, FutureOr<Group?>>
    with $FutureModifier<Group?>, $FutureProvider<Group?> {
  /// 現在のグループ情報
  const CurrentGroupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentGroupProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentGroupHash();

  @$internal
  @override
  $FutureProviderElement<Group?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Group?> create(Ref ref) {
    return currentGroup(ref);
  }
}

String _$currentGroupHash() => r'0a54f0b52f2e68e233dc5769ef41f1d6a36a5ec4';
