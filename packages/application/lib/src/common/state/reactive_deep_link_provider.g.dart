// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'reactive_deep_link_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ディープリンク(購読)

@ProviderFor(reactiveDeepLink)
const reactiveDeepLinkProvider = ReactiveDeepLinkProvider._();

/// ディープリンク(購読)

final class ReactiveDeepLinkProvider
    extends $FunctionalProvider<AsyncValue<Uri>, Uri, Stream<Uri>>
    with $FutureModifier<Uri>, $StreamProvider<Uri> {
  /// ディープリンク(購読)
  const ReactiveDeepLinkProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reactiveDeepLinkProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reactiveDeepLinkHash();

  @$internal
  @override
  $StreamProviderElement<Uri> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Uri> create(Ref ref) {
    return reactiveDeepLink(ref);
  }
}

String _$reactiveDeepLinkHash() => r'f1dbb9585b645b14412a8346f13e38302bf7882b';
