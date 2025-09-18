// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'remote_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteConfigHash() => r'36d7b397a177e8516a81814c1f515ebf6415c1a6';

/// Firebase Remote Config
/// テスト時にDIすることを考慮して、Providerとして定義
///
/// Copied from [remoteConfig].
@ProviderFor(remoteConfig)
final remoteConfigProvider = FutureProvider<FirebaseRemoteConfig>.internal(
  remoteConfig,
  name: r'remoteConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$remoteConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RemoteConfigRef = FutureProviderRef<FirebaseRemoteConfig>;
String _$stringConfigHash() => r'a54d53ff39eb08f065ecfc5f289e17cac834de85';

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

/// See also [stringConfig].
@ProviderFor(stringConfig)
const stringConfigProvider = StringConfigFamily();

/// See also [stringConfig].
class StringConfigFamily extends Family<AsyncValue<String>> {
  /// See also [stringConfig].
  const StringConfigFamily();

  /// See also [stringConfig].
  StringConfigProvider call({required RemoteConfigs<String> config}) {
    return StringConfigProvider(config: config);
  }

  @override
  StringConfigProvider getProviderOverride(
    covariant StringConfigProvider provider,
  ) {
    return call(config: provider.config);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'stringConfigProvider';
}

/// See also [stringConfig].
class StringConfigProvider extends AutoDisposeFutureProvider<String> {
  /// See also [stringConfig].
  StringConfigProvider({required RemoteConfigs<String> config})
    : this._internal(
        (ref) => stringConfig(ref as StringConfigRef, config: config),
        from: stringConfigProvider,
        name: r'stringConfigProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$stringConfigHash,
        dependencies: StringConfigFamily._dependencies,
        allTransitiveDependencies:
            StringConfigFamily._allTransitiveDependencies,
        config: config,
      );

  StringConfigProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.config,
  }) : super.internal();

  final RemoteConfigs<String> config;

  @override
  Override overrideWith(
    FutureOr<String> Function(StringConfigRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StringConfigProvider._internal(
        (ref) => create(ref as StringConfigRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        config: config,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _StringConfigProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StringConfigProvider && other.config == config;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, config.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StringConfigRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `config` of this provider.
  RemoteConfigs<String> get config;
}

class _StringConfigProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with StringConfigRef {
  _StringConfigProviderElement(super.provider);

  @override
  RemoteConfigs<String> get config => (origin as StringConfigProvider).config;
}

String _$boolConfigHash() => r'3750bdf5cffc2bb87fbc946aef5adbd11fcc9438';

/// See also [boolConfig].
@ProviderFor(boolConfig)
const boolConfigProvider = BoolConfigFamily();

/// See also [boolConfig].
class BoolConfigFamily extends Family<AsyncValue<bool>> {
  /// See also [boolConfig].
  const BoolConfigFamily();

  /// See also [boolConfig].
  BoolConfigProvider call({required RemoteConfigs<bool> config}) {
    return BoolConfigProvider(config: config);
  }

  @override
  BoolConfigProvider getProviderOverride(
    covariant BoolConfigProvider provider,
  ) {
    return call(config: provider.config);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'boolConfigProvider';
}

/// See also [boolConfig].
class BoolConfigProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [boolConfig].
  BoolConfigProvider({required RemoteConfigs<bool> config})
    : this._internal(
        (ref) => boolConfig(ref as BoolConfigRef, config: config),
        from: boolConfigProvider,
        name: r'boolConfigProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$boolConfigHash,
        dependencies: BoolConfigFamily._dependencies,
        allTransitiveDependencies: BoolConfigFamily._allTransitiveDependencies,
        config: config,
      );

  BoolConfigProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.config,
  }) : super.internal();

  final RemoteConfigs<bool> config;

  @override
  Override overrideWith(
    FutureOr<bool> Function(BoolConfigRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BoolConfigProvider._internal(
        (ref) => create(ref as BoolConfigRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        config: config,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _BoolConfigProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolConfigProvider && other.config == config;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, config.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BoolConfigRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `config` of this provider.
  RemoteConfigs<bool> get config;
}

class _BoolConfigProviderElement extends AutoDisposeFutureProviderElement<bool>
    with BoolConfigRef {
  _BoolConfigProviderElement(super.provider);

  @override
  RemoteConfigs<bool> get config => (origin as BoolConfigProvider).config;
}

String _$stringStreamConfigHash() =>
    r'5d70c2bf5c5d5b92002e803fff4651df273f0b98';

/// See also [stringStreamConfig].
@ProviderFor(stringStreamConfig)
const stringStreamConfigProvider = StringStreamConfigFamily();

/// See also [stringStreamConfig].
class StringStreamConfigFamily extends Family<AsyncValue<String>> {
  /// See also [stringStreamConfig].
  const StringStreamConfigFamily();

  /// See also [stringStreamConfig].
  StringStreamConfigProvider call({required RemoteConfigs<String> config}) {
    return StringStreamConfigProvider(config: config);
  }

  @override
  StringStreamConfigProvider getProviderOverride(
    covariant StringStreamConfigProvider provider,
  ) {
    return call(config: provider.config);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'stringStreamConfigProvider';
}

/// See also [stringStreamConfig].
class StringStreamConfigProvider extends AutoDisposeStreamProvider<String> {
  /// See also [stringStreamConfig].
  StringStreamConfigProvider({required RemoteConfigs<String> config})
    : this._internal(
        (ref) =>
            stringStreamConfig(ref as StringStreamConfigRef, config: config),
        from: stringStreamConfigProvider,
        name: r'stringStreamConfigProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$stringStreamConfigHash,
        dependencies: StringStreamConfigFamily._dependencies,
        allTransitiveDependencies:
            StringStreamConfigFamily._allTransitiveDependencies,
        config: config,
      );

  StringStreamConfigProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.config,
  }) : super.internal();

  final RemoteConfigs<String> config;

  @override
  Override overrideWith(
    Stream<String> Function(StringStreamConfigRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StringStreamConfigProvider._internal(
        (ref) => create(ref as StringStreamConfigRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        config: config,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<String> createElement() {
    return _StringStreamConfigProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StringStreamConfigProvider && other.config == config;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, config.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StringStreamConfigRef on AutoDisposeStreamProviderRef<String> {
  /// The parameter `config` of this provider.
  RemoteConfigs<String> get config;
}

class _StringStreamConfigProviderElement
    extends AutoDisposeStreamProviderElement<String>
    with StringStreamConfigRef {
  _StringStreamConfigProviderElement(super.provider);

  @override
  RemoteConfigs<String> get config =>
      (origin as StringStreamConfigProvider).config;
}

String _$boolStreamConfigHash() => r'd5360082d0a6b46d1fe91de93198a70960a02d47';

/// See also [boolStreamConfig].
@ProviderFor(boolStreamConfig)
const boolStreamConfigProvider = BoolStreamConfigFamily();

/// See also [boolStreamConfig].
class BoolStreamConfigFamily extends Family<AsyncValue<bool>> {
  /// See also [boolStreamConfig].
  const BoolStreamConfigFamily();

  /// See also [boolStreamConfig].
  BoolStreamConfigProvider call({required RemoteConfigs<bool> config}) {
    return BoolStreamConfigProvider(config: config);
  }

  @override
  BoolStreamConfigProvider getProviderOverride(
    covariant BoolStreamConfigProvider provider,
  ) {
    return call(config: provider.config);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'boolStreamConfigProvider';
}

/// See also [boolStreamConfig].
class BoolStreamConfigProvider extends AutoDisposeStreamProvider<bool> {
  /// See also [boolStreamConfig].
  BoolStreamConfigProvider({required RemoteConfigs<bool> config})
    : this._internal(
        (ref) => boolStreamConfig(ref as BoolStreamConfigRef, config: config),
        from: boolStreamConfigProvider,
        name: r'boolStreamConfigProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$boolStreamConfigHash,
        dependencies: BoolStreamConfigFamily._dependencies,
        allTransitiveDependencies:
            BoolStreamConfigFamily._allTransitiveDependencies,
        config: config,
      );

  BoolStreamConfigProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.config,
  }) : super.internal();

  final RemoteConfigs<bool> config;

  @override
  Override overrideWith(
    Stream<bool> Function(BoolStreamConfigRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BoolStreamConfigProvider._internal(
        (ref) => create(ref as BoolStreamConfigRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        config: config,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<bool> createElement() {
    return _BoolStreamConfigProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolStreamConfigProvider && other.config == config;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, config.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin BoolStreamConfigRef on AutoDisposeStreamProviderRef<bool> {
  /// The parameter `config` of this provider.
  RemoteConfigs<bool> get config;
}

class _BoolStreamConfigProviderElement
    extends AutoDisposeStreamProviderElement<bool>
    with BoolStreamConfigRef {
  _BoolStreamConfigProviderElement(super.provider);

  @override
  RemoteConfigs<bool> get config => (origin as BoolStreamConfigProvider).config;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
