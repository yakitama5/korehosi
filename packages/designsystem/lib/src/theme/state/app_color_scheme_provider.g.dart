// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_color_scheme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appColorSchemeHash() => r'7472b42d429bd7df3f05b0e044b3c5ba23e5da16';

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

/// アプリ内のカラースキーマを管理
///
/// Copied from [appColorScheme].
@ProviderFor(appColorScheme)
const appColorSchemeProvider = AppColorSchemeFamily();

/// アプリ内のカラースキーマを管理
///
/// Copied from [appColorScheme].
class AppColorSchemeFamily extends Family<ColorScheme> {
  /// アプリ内のカラースキーマを管理
  ///
  /// Copied from [appColorScheme].
  const AppColorSchemeFamily();

  /// アプリ内のカラースキーマを管理
  ///
  /// Copied from [appColorScheme].
  AppColorSchemeProvider call({required Brightness brightness}) {
    return AppColorSchemeProvider(brightness: brightness);
  }

  @override
  AppColorSchemeProvider getProviderOverride(
    covariant AppColorSchemeProvider provider,
  ) {
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
  String? get name => r'appColorSchemeProvider';
}

/// アプリ内のカラースキーマを管理
///
/// Copied from [appColorScheme].
class AppColorSchemeProvider extends AutoDisposeProvider<ColorScheme> {
  /// アプリ内のカラースキーマを管理
  ///
  /// Copied from [appColorScheme].
  AppColorSchemeProvider({required Brightness brightness})
    : this._internal(
        (ref) =>
            appColorScheme(ref as AppColorSchemeRef, brightness: brightness),
        from: appColorSchemeProvider,
        name: r'appColorSchemeProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$appColorSchemeHash,
        dependencies: AppColorSchemeFamily._dependencies,
        allTransitiveDependencies:
            AppColorSchemeFamily._allTransitiveDependencies,
        brightness: brightness,
      );

  AppColorSchemeProvider._internal(
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
  Override overrideWith(
    ColorScheme Function(AppColorSchemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AppColorSchemeProvider._internal(
        (ref) => create(ref as AppColorSchemeRef),
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
  AutoDisposeProviderElement<ColorScheme> createElement() {
    return _AppColorSchemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppColorSchemeProvider && other.brightness == brightness;
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
mixin AppColorSchemeRef on AutoDisposeProviderRef<ColorScheme> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _AppColorSchemeProviderElement
    extends AutoDisposeProviderElement<ColorScheme>
    with AppColorSchemeRef {
  _AppColorSchemeProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as AppColorSchemeProvider).brightness;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
