// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'preferences_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stringPreferenceHash() => r'66b53c815db911bd973af7fbd3d5914b7a4c5c72';

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

abstract class _$StringPreference extends BuildlessAutoDisposeNotifier<String> {
  late final Preferences<String> pref;

  String build(Preferences<String> pref);
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///
///
/// Copied from [StringPreference].
@ProviderFor(StringPreference)
const stringPreferenceProvider = StringPreferenceFamily();

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///
///
/// Copied from [StringPreference].
class StringPreferenceFamily extends Family<String> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<String>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [StringPreference].
  const StringPreferenceFamily();

  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<String>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [StringPreference].
  StringPreferenceProvider call(Preferences<String> pref) {
    return StringPreferenceProvider(pref);
  }

  @override
  StringPreferenceProvider getProviderOverride(
    covariant StringPreferenceProvider provider,
  ) {
    return call(provider.pref);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'stringPreferenceProvider';
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///
///
/// Copied from [StringPreference].
class StringPreferenceProvider
    extends AutoDisposeNotifierProviderImpl<StringPreference, String> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<String>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [StringPreference].
  StringPreferenceProvider(Preferences<String> pref)
    : this._internal(
        () => StringPreference()..pref = pref,
        from: stringPreferenceProvider,
        name: r'stringPreferenceProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$stringPreferenceHash,
        dependencies: StringPreferenceFamily._dependencies,
        allTransitiveDependencies:
            StringPreferenceFamily._allTransitiveDependencies,
        pref: pref,
      );

  StringPreferenceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pref,
  }) : super.internal();

  final Preferences<String> pref;

  @override
  String runNotifierBuild(covariant StringPreference notifier) {
    return notifier.build(pref);
  }

  @override
  Override overrideWith(StringPreference Function() create) {
    return ProviderOverride(
      origin: this,
      override: StringPreferenceProvider._internal(
        () => create()..pref = pref,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pref: pref,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<StringPreference, String> createElement() {
    return _StringPreferenceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StringPreferenceProvider && other.pref == pref;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pref.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StringPreferenceRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `pref` of this provider.
  Preferences<String> get pref;
}

class _StringPreferenceProviderElement
    extends AutoDisposeNotifierProviderElement<StringPreference, String>
    with StringPreferenceRef {
  _StringPreferenceProviderElement(super.provider);

  @override
  Preferences<String> get pref => (origin as StringPreferenceProvider).pref;
}

String _$boolPreferenceHash() => r'1645984b3471a9801c471b1803d35d078c38b074';

abstract class _$BoolPreference extends BuildlessAutoDisposeNotifier<bool> {
  late final Preferences<bool> pref;

  bool build(Preferences<bool> pref);
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///
///
/// Copied from [BoolPreference].
@ProviderFor(BoolPreference)
const boolPreferenceProvider = BoolPreferenceFamily();

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///
///
/// Copied from [BoolPreference].
class BoolPreferenceFamily extends Family<bool> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<bool>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [BoolPreference].
  const BoolPreferenceFamily();

  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<bool>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [BoolPreference].
  BoolPreferenceProvider call(Preferences<bool> pref) {
    return BoolPreferenceProvider(pref);
  }

  @override
  BoolPreferenceProvider getProviderOverride(
    covariant BoolPreferenceProvider provider,
  ) {
    return call(provider.pref);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'boolPreferenceProvider';
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///
///
/// Copied from [BoolPreference].
class BoolPreferenceProvider
    extends AutoDisposeNotifierProviderImpl<BoolPreference, bool> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<bool>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [BoolPreference].
  BoolPreferenceProvider(Preferences<bool> pref)
    : this._internal(
        () => BoolPreference()..pref = pref,
        from: boolPreferenceProvider,
        name: r'boolPreferenceProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$boolPreferenceHash,
        dependencies: BoolPreferenceFamily._dependencies,
        allTransitiveDependencies:
            BoolPreferenceFamily._allTransitiveDependencies,
        pref: pref,
      );

  BoolPreferenceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pref,
  }) : super.internal();

  final Preferences<bool> pref;

  @override
  bool runNotifierBuild(covariant BoolPreference notifier) {
    return notifier.build(pref);
  }

  @override
  Override overrideWith(BoolPreference Function() create) {
    return ProviderOverride(
      origin: this,
      override: BoolPreferenceProvider._internal(
        () => create()..pref = pref,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pref: pref,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<BoolPreference, bool> createElement() {
    return _BoolPreferenceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolPreferenceProvider && other.pref == pref;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pref.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BoolPreferenceRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `pref` of this provider.
  Preferences<bool> get pref;
}

class _BoolPreferenceProviderElement
    extends AutoDisposeNotifierProviderElement<BoolPreference, bool>
    with BoolPreferenceRef {
  _BoolPreferenceProviderElement(super.provider);

  @override
  Preferences<bool> get pref => (origin as BoolPreferenceProvider).pref;
}

String _$intPreferenceHash() => r'ff1eb7bca50d959f32b13d584a657b5facf24585';

abstract class _$IntPreference extends BuildlessAutoDisposeNotifier<int> {
  late final Preferences<int> pref;

  int build(Preferences<int> pref);
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///
///
/// Copied from [IntPreference].
@ProviderFor(IntPreference)
const intPreferenceProvider = IntPreferenceFamily();

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///
///
/// Copied from [IntPreference].
class IntPreferenceFamily extends Family<int> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<int>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [IntPreference].
  const IntPreferenceFamily();

  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<int>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [IntPreference].
  IntPreferenceProvider call(Preferences<int> pref) {
    return IntPreferenceProvider(pref);
  }

  @override
  IntPreferenceProvider getProviderOverride(
    covariant IntPreferenceProvider provider,
  ) {
    return call(provider.pref);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'intPreferenceProvider';
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///
///
/// Copied from [IntPreference].
class IntPreferenceProvider
    extends AutoDisposeNotifierProviderImpl<IntPreference, int> {
  ///
  /// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
  /// `Preference<int>`のenum値を設定して利用する.
  ///
  ///
  /// Copied from [IntPreference].
  IntPreferenceProvider(Preferences<int> pref)
    : this._internal(
        () => IntPreference()..pref = pref,
        from: intPreferenceProvider,
        name: r'intPreferenceProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$intPreferenceHash,
        dependencies: IntPreferenceFamily._dependencies,
        allTransitiveDependencies:
            IntPreferenceFamily._allTransitiveDependencies,
        pref: pref,
      );

  IntPreferenceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pref,
  }) : super.internal();

  final Preferences<int> pref;

  @override
  int runNotifierBuild(covariant IntPreference notifier) {
    return notifier.build(pref);
  }

  @override
  Override overrideWith(IntPreference Function() create) {
    return ProviderOverride(
      origin: this,
      override: IntPreferenceProvider._internal(
        () => create()..pref = pref,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pref: pref,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<IntPreference, int> createElement() {
    return _IntPreferenceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IntPreferenceProvider && other.pref == pref;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pref.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IntPreferenceRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `pref` of this provider.
  Preferences<int> get pref;
}

class _IntPreferenceProviderElement
    extends AutoDisposeNotifierProviderElement<IntPreference, int>
    with IntPreferenceRef {
  _IntPreferenceProviderElement(super.provider);

  @override
  Preferences<int> get pref => (origin as IntPreferenceProvider).pref;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
