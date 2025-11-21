// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'force_update_version_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(forceUpdateVersion)
const forceUpdateVersionProvider = ForceUpdateVersionProvider._();

final class ForceUpdateVersionProvider
    extends $FunctionalProvider<AsyncValue<Version>, Version, Stream<Version>>
    with $FutureModifier<Version>, $StreamProvider<Version> {
  const ForceUpdateVersionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'forceUpdateVersionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$forceUpdateVersionHash();

  @$internal
  @override
  $StreamProviderElement<Version> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Version> create(Ref ref) {
    return forceUpdateVersion(ref);
  }
}

String _$forceUpdateVersionHash() =>
    r'7a3ac5a7db5e2d3f564e1615aebb8353b72f41b4';
