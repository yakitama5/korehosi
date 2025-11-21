// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'ui_style_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している

@ProviderFor(UiStyleNotifier)
const uiStyleProvider = UiStyleNotifierProvider._();

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
final class UiStyleNotifierProvider
    extends $NotifierProvider<UiStyleNotifier, UIStyle> {
  /// UIスタイルを管理するProvider
  /// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
  const UiStyleNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uiStyleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uiStyleNotifierHash();

  @$internal
  @override
  UiStyleNotifier create() => UiStyleNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UIStyle value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UIStyle>(value),
    );
  }
}

String _$uiStyleNotifierHash() => r'790b4e26de4474c79b28b101480dcaf63efd301b';

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している

abstract class _$UiStyleNotifier extends $Notifier<UIStyle> {
  UIStyle build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<UIStyle, UIStyle>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UIStyle, UIStyle>,
              UIStyle,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
