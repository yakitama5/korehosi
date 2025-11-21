// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'theme_color_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// テーマカラーを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している

@ProviderFor(ThemeColorNotifier)
const themeColorProvider = ThemeColorNotifierProvider._();

/// テーマカラーを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
final class ThemeColorNotifierProvider
    extends $NotifierProvider<ThemeColorNotifier, ThemeColor> {
  /// テーマカラーを管理するProvider
  /// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
  const ThemeColorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeColorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeColorNotifierHash();

  @$internal
  @override
  ThemeColorNotifier create() => ThemeColorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeColor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeColor>(value),
    );
  }
}

String _$themeColorNotifierHash() =>
    r'a2fecca7060c780184a101cc65a415aee6826203';

/// テーマカラーを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している

abstract class _$ThemeColorNotifier extends $Notifier<ThemeColor> {
  ThemeColor build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeColor, ThemeColor>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeColor, ThemeColor>,
              ThemeColor,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
