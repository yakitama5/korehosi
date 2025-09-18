// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firebase_functions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseFunctionsHash() => r'3c986d4d43427f37786a729442cd1a430c787a91';

/// Firebase Functions
/// テスト時にDIすることを考慮して、Providerとして定義
///
/// Copied from [firebaseFunctions].
@ProviderFor(firebaseFunctions)
final firebaseFunctionsProvider =
    AutoDisposeProvider<FirebaseFunctions>.internal(
      firebaseFunctions,
      name: r'firebaseFunctionsProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$firebaseFunctionsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FirebaseFunctionsRef = AutoDisposeProviderRef<FirebaseFunctions>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
