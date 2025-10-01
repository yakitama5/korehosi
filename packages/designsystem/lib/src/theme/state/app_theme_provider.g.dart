// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appThemeHash() => r'a027b8e826d0c1306853db34344070bccb18b326';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// アプリ内のテーマを管理
///
/// Copied from [appTheme].
@ProviderFor(appTheme)
const appThemeProvider = AppThemeFamily();

/// アプリ内のテーマを管理
///
/// Copied from [appTheme].
class AppThemeFamily extends Family<ThemeData> {
  /// アプリ内のテーマを管理
  ///
  /// Copied from [appTheme].
  const AppThemeFamily();

  /// アプリ内のテーマを管理
  ///
  /// Copied from [appTheme].
  AppThemeProvider call({required Brightness brightness}) {
    return AppThemeProvider(brightness: brightness);
  }

  @override
  AppThemeProvider getProviderOverride(covariant AppThemeProvider provider) {
    return call(brightness: provider.brightness);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'appThemeProvider';
}

/// アプリ内のテーマを管理
///
/// Copied from [appTheme].
class AppThemeProvider extends AutoDisposeProvider<ThemeData> {
  /// アプリ内のテーマを管理
  ///
  /// Copied from [appTheme].
  AppThemeProvider({required Brightness brightness})
    : this._internal(
        (ref) => appTheme(ref as AppThemeRef, brightness: brightness),
        from: appThemeProvider,
        name: r'appThemeProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$appThemeHash,
        dependencies: AppThemeFamily._dependencies,
        allTransitiveDependencies: AppThemeFamily._allTransitiveDependencies,
        brightness: brightness,
      );

  AppThemeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(ThemeData Function(AppThemeRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: AppThemeProvider._internal(
        (ref) => create(ref as AppThemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ThemeData> createElement() {
    return _AppThemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppThemeProvider && other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AppThemeRef on AutoDisposeProviderRef<ThemeData> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _AppThemeProviderElement extends AutoDisposeProviderElement<ThemeData>
    with AppThemeRef {
  _AppThemeProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as AppThemeProvider).brightness;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
