// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'loading_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// アプリ全体で共通するローディング表示を管理

@ProviderFor(LoadingNotifier)
const loadingProvider = LoadingNotifierProvider._();

/// アプリ全体で共通するローディング表示を管理
final class LoadingNotifierProvider
    extends $NotifierProvider<LoadingNotifier, bool> {
  /// アプリ全体で共通するローディング表示を管理
  const LoadingNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingNotifierHash();

  @$internal
  @override
  LoadingNotifier create() => LoadingNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$loadingNotifierHash() => r'af1996d9ac77e923458cbf2039e2302f793c28b6';

/// アプリ全体で共通するローディング表示を管理

abstract class _$LoadingNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
