// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'remote_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Firebase Remote Config。
///
/// fetchに失敗しても、SDKが保持するactivated/cached/default値を利用できるよう
/// 初期化自体は成功させる。

@ProviderFor(remoteConfig)
const remoteConfigProvider = RemoteConfigProvider._();

/// Firebase Remote Config。
///
/// fetchに失敗しても、SDKが保持するactivated/cached/default値を利用できるよう
/// 初期化自体は成功させる。

final class RemoteConfigProvider
    extends
        $FunctionalProvider<
          AsyncValue<RemoteConfigClient>,
          RemoteConfigClient,
          FutureOr<RemoteConfigClient>
        >
    with
        $FutureModifier<RemoteConfigClient>,
        $FutureProvider<RemoteConfigClient> {
  /// Firebase Remote Config。
  ///
  /// fetchに失敗しても、SDKが保持するactivated/cached/default値を利用できるよう
  /// 初期化自体は成功させる。
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
  $FutureProviderElement<RemoteConfigClient> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RemoteConfigClient> create(Ref ref) {
    return remoteConfig(ref);
  }
}

String _$remoteConfigHash() => r'81bb48b01e8e14e8ef39d0a394175a7d45f2ecc2';

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

String _$stringConfigHash() => r'9629e726337755b97478026bc3bcc0b70d517ec1';

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

String _$boolConfigHash() => r'a8cc7ffd994eb559dce9dc12b1879770883ea63a';

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
    r'154a6b929a9383efbf6b4285cbbc28b13d8ce7b6';

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

String _$boolStreamConfigHash() => r'0cd53acec79ecdb47a766d0396d27a0bcf4209dd';

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
