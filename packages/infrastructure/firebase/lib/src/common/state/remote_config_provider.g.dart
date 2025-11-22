// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'remote_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Firebase Remote Config
/// テスト時にDIすることを考慮して、Providerとして定義

@ProviderFor(remoteConfig)
const remoteConfigProvider = RemoteConfigProvider._();

/// Firebase Remote Config
/// テスト時にDIすることを考慮して、Providerとして定義

final class RemoteConfigProvider
    extends
        $FunctionalProvider<
          AsyncValue<FirebaseRemoteConfig>,
          FirebaseRemoteConfig,
          FutureOr<FirebaseRemoteConfig>
        >
    with
        $FutureModifier<FirebaseRemoteConfig>,
        $FutureProvider<FirebaseRemoteConfig> {
  /// Firebase Remote Config
  /// テスト時にDIすることを考慮して、Providerとして定義
  const RemoteConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'remoteConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$remoteConfigHash();

  @$internal
  @override
  $FutureProviderElement<FirebaseRemoteConfig> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FirebaseRemoteConfig> create(Ref ref) {
    return remoteConfig(ref);
  }
}

String _$remoteConfigHash() => r'36d7b397a177e8516a81814c1f515ebf6415c1a6';

@ProviderFor(stringConfig)
const stringConfigProvider = StringConfigFamily._();

final class StringConfigProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const StringConfigProvider._({
    required StringConfigFamily super.from,
    required RemoteConfigs<String> super.argument,
  }) : super(
         retry: null,
         name: r'stringConfigProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$stringConfigHash();

  @override
  String toString() {
    return r'stringConfigProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as RemoteConfigs<String>;
    return stringConfig(ref, config: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StringConfigProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stringConfigHash() => r'a54d53ff39eb08f065ecfc5f289e17cac834de85';

final class StringConfigFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, RemoteConfigs<String>> {
  const StringConfigFamily._()
    : super(
        retry: null,
        name: r'stringConfigProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StringConfigProvider call({required RemoteConfigs<String> config}) =>
      StringConfigProvider._(argument: config, from: this);

  @override
  String toString() => r'stringConfigProvider';
}

@ProviderFor(boolConfig)
const boolConfigProvider = BoolConfigFamily._();

final class BoolConfigProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const BoolConfigProvider._({
    required BoolConfigFamily super.from,
    required RemoteConfigs<bool> super.argument,
  }) : super(
         retry: null,
         name: r'boolConfigProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boolConfigHash();

  @override
  String toString() {
    return r'boolConfigProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    final argument = this.argument as RemoteConfigs<bool>;
    return boolConfig(ref, config: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolConfigProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$boolConfigHash() => r'3750bdf5cffc2bb87fbc946aef5adbd11fcc9438';

final class BoolConfigFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool>, RemoteConfigs<bool>> {
  const BoolConfigFamily._()
    : super(
        retry: null,
        name: r'boolConfigProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BoolConfigProvider call({required RemoteConfigs<bool> config}) =>
      BoolConfigProvider._(argument: config, from: this);

  @override
  String toString() => r'boolConfigProvider';
}

@ProviderFor(stringStreamConfig)
const stringStreamConfigProvider = StringStreamConfigFamily._();

final class StringStreamConfigProvider
    extends $FunctionalProvider<AsyncValue<String>, String, Stream<String>>
    with $FutureModifier<String>, $StreamProvider<String> {
  const StringStreamConfigProvider._({
    required StringStreamConfigFamily super.from,
    required RemoteConfigs<String> super.argument,
  }) : super(
         retry: null,
         name: r'stringStreamConfigProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$stringStreamConfigHash();

  @override
  String toString() {
    return r'stringStreamConfigProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<String> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String> create(Ref ref) {
    final argument = this.argument as RemoteConfigs<String>;
    return stringStreamConfig(ref, config: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StringStreamConfigProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$stringStreamConfigHash() =>
    r'5d70c2bf5c5d5b92002e803fff4651df273f0b98';

final class StringStreamConfigFamily extends $Family
    with $FunctionalFamilyOverride<Stream<String>, RemoteConfigs<String>> {
  const StringStreamConfigFamily._()
    : super(
        retry: null,
        name: r'stringStreamConfigProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StringStreamConfigProvider call({required RemoteConfigs<String> config}) =>
      StringStreamConfigProvider._(argument: config, from: this);

  @override
  String toString() => r'stringStreamConfigProvider';
}

@ProviderFor(boolStreamConfig)
const boolStreamConfigProvider = BoolStreamConfigFamily._();

final class BoolStreamConfigProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  const BoolStreamConfigProvider._({
    required BoolStreamConfigFamily super.from,
    required RemoteConfigs<bool> super.argument,
  }) : super(
         retry: null,
         name: r'boolStreamConfigProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boolStreamConfigHash();

  @override
  String toString() {
    return r'boolStreamConfigProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    final argument = this.argument as RemoteConfigs<bool>;
    return boolStreamConfig(ref, config: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BoolStreamConfigProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$boolStreamConfigHash() => r'd5360082d0a6b46d1fe91de93198a70960a02d47';

final class BoolStreamConfigFamily extends $Family
    with $FunctionalFamilyOverride<Stream<bool>, RemoteConfigs<bool>> {
  const BoolStreamConfigFamily._()
    : super(
        retry: null,
        name: r'boolStreamConfigProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BoolStreamConfigProvider call({required RemoteConfigs<bool> config}) =>
      BoolStreamConfigProvider._(argument: config, from: this);

  @override
  String toString() => r'boolStreamConfigProvider';
}
