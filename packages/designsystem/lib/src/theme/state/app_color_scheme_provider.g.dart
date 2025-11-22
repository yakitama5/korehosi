// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_color_scheme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// アプリ内のカラースキーマを管理

@ProviderFor(appColorScheme)
const appColorSchemeProvider = AppColorSchemeFamily._();

/// アプリ内のカラースキーマを管理

final class AppColorSchemeProvider
    extends $FunctionalProvider<ColorScheme, ColorScheme, ColorScheme>
    with $Provider<ColorScheme> {
  /// アプリ内のカラースキーマを管理
  const AppColorSchemeProvider._({
    required AppColorSchemeFamily super.from,
    required Brightness super.argument,
  }) : super(
         retry: null,
         name: r'appColorSchemeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appColorSchemeHash();

  @override
  String toString() {
    return r'appColorSchemeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ColorScheme> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ColorScheme create(Ref ref) {
    final argument = this.argument as Brightness;
    return appColorScheme(ref, brightness: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ColorScheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ColorScheme>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppColorSchemeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appColorSchemeHash() => r'cc5f10491a5599f30df78289be489b39157bd072';

/// アプリ内のカラースキーマを管理

final class AppColorSchemeFamily extends $Family
    with $FunctionalFamilyOverride<ColorScheme, Brightness> {
  const AppColorSchemeFamily._()
    : super(
        retry: null,
        name: r'appColorSchemeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// アプリ内のカラースキーマを管理

  AppColorSchemeProvider call({required Brightness brightness}) =>
      AppColorSchemeProvider._(argument: brightness, from: this);

  @override
  String toString() => r'appColorSchemeProvider';
}
