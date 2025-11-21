// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'token_timestamp_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// FCMトークンのタイムスタンプを管理するProvider

@ProviderFor(tokenTimestamp)
const tokenTimestampProvider = TokenTimestampFamily._();

/// FCMトークンのタイムスタンプを管理するProvider

final class TokenTimestampProvider
    extends
        $FunctionalProvider<
          AsyncValue<DateTime?>,
          DateTime?,
          FutureOr<DateTime?>
        >
    with $FutureModifier<DateTime?>, $FutureProvider<DateTime?> {
  /// FCMトークンのタイムスタンプを管理するProvider
  const TokenTimestampProvider._({
    required TokenTimestampFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'tokenTimestampProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tokenTimestampHash();

  @override
  String toString() {
    return r'tokenTimestampProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DateTime?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DateTime?> create(Ref ref) {
    final argument = this.argument as String;
    return tokenTimestamp(ref, token: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenTimestampProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tokenTimestampHash() => r'9dae9f8b03a0cae9bf27bc121780f56bd9e42b9c';

/// FCMトークンのタイムスタンプを管理するProvider

final class TokenTimestampFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DateTime?>, String> {
  const TokenTimestampFamily._()
    : super(
        retry: null,
        name: r'tokenTimestampProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// FCMトークンのタイムスタンプを管理するProvider

  TokenTimestampProvider call({required String token}) =>
      TokenTimestampProvider._(argument: token, from: this);

  @override
  String toString() => r'tokenTimestampProvider';
}
