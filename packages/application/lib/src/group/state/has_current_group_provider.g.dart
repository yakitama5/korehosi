// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'has_current_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 現在のグループが選択されているか否か

@ProviderFor(hasCurrentGroup)
const hasCurrentGroupProvider = HasCurrentGroupProvider._();

/// 現在のグループが選択されているか否か

final class HasCurrentGroupProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  /// 現在のグループが選択されているか否か
  const HasCurrentGroupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasCurrentGroupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasCurrentGroupHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return hasCurrentGroup(ref);
  }
}

String _$hasCurrentGroupHash() => r'812f21e25d0058e0d6982c01b552d732f201cd39';
