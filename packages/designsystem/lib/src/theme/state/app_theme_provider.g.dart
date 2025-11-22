// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// アプリ内のテーマを管理

@ProviderFor(appTheme)
const appThemeProvider = AppThemeFamily._();

/// アプリ内のテーマを管理

final class AppThemeProvider
    extends $FunctionalProvider<ThemeData, ThemeData, ThemeData>
    with $Provider<ThemeData> {
  /// アプリ内のテーマを管理
  const AppThemeProvider._({
    required AppThemeFamily super.from,
    required Brightness super.argument,
  }) : super(
         retry: null,
         name: r'appThemeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appThemeHash();

  @override
  String toString() {
    return r'appThemeProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ThemeData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeData create(Ref ref) {
    final argument = this.argument as Brightness;
    return appTheme(ref, brightness: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppThemeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appThemeHash() => r'a027b8e826d0c1306853db34344070bccb18b326';

/// アプリ内のテーマを管理

final class AppThemeFamily extends $Family
    with $FunctionalFamilyOverride<ThemeData, Brightness> {
  const AppThemeFamily._()
    : super(
        retry: null,
        name: r'appThemeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// アプリ内のテーマを管理

  AppThemeProvider call({required Brightness brightness}) =>
      AppThemeProvider._(argument: brightness, from: this);

  @override
  String toString() => r'appThemeProvider';
}
