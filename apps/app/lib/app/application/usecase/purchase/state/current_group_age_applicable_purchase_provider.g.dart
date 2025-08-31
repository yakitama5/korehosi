// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_group_age_applicable_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentGroupAgeApplicablePurchaseHash() =>
    r'0f336c7f25c815e2106131a9b012073e8fcd4db4';

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

/// グループ内の年齢に応じた購入情報
///
/// Copied from [currentGroupAgeApplicablePurchase].
@ProviderFor(currentGroupAgeApplicablePurchase)
const currentGroupAgeApplicablePurchaseProvider =
    CurrentGroupAgeApplicablePurchaseFamily();

/// グループ内の年齢に応じた購入情報
///
/// Copied from [currentGroupAgeApplicablePurchase].
class CurrentGroupAgeApplicablePurchaseFamily
    extends Family<AsyncValue<Purchase?>> {
  /// グループ内の年齢に応じた購入情報
  ///
  /// Copied from [currentGroupAgeApplicablePurchase].
  const CurrentGroupAgeApplicablePurchaseFamily();

  /// グループ内の年齢に応じた購入情報
  ///
  /// Copied from [currentGroupAgeApplicablePurchase].
  CurrentGroupAgeApplicablePurchaseProvider call({required String itemId}) {
    return CurrentGroupAgeApplicablePurchaseProvider(itemId: itemId);
  }

  @override
  CurrentGroupAgeApplicablePurchaseProvider getProviderOverride(
    covariant CurrentGroupAgeApplicablePurchaseProvider provider,
  ) {
    return call(itemId: provider.itemId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'currentGroupAgeApplicablePurchaseProvider';
}

/// グループ内の年齢に応じた購入情報
///
/// Copied from [currentGroupAgeApplicablePurchase].
class CurrentGroupAgeApplicablePurchaseProvider
    extends AutoDisposeFutureProvider<Purchase?> {
  /// グループ内の年齢に応じた購入情報
  ///
  /// Copied from [currentGroupAgeApplicablePurchase].
  CurrentGroupAgeApplicablePurchaseProvider({required String itemId})
    : this._internal(
        (ref) => currentGroupAgeApplicablePurchase(
          ref as CurrentGroupAgeApplicablePurchaseRef,
          itemId: itemId,
        ),
        from: currentGroupAgeApplicablePurchaseProvider,
        name: r'currentGroupAgeApplicablePurchaseProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$currentGroupAgeApplicablePurchaseHash,
        dependencies: CurrentGroupAgeApplicablePurchaseFamily._dependencies,
        allTransitiveDependencies:
            CurrentGroupAgeApplicablePurchaseFamily._allTransitiveDependencies,
        itemId: itemId,
      );

  CurrentGroupAgeApplicablePurchaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
  }) : super.internal();

  final String itemId;

  @override
  Override overrideWith(
    FutureOr<Purchase?> Function(CurrentGroupAgeApplicablePurchaseRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentGroupAgeApplicablePurchaseProvider._internal(
        (ref) => create(ref as CurrentGroupAgeApplicablePurchaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemId: itemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Purchase?> createElement() {
    return _CurrentGroupAgeApplicablePurchaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentGroupAgeApplicablePurchaseProvider &&
        other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CurrentGroupAgeApplicablePurchaseRef
    on AutoDisposeFutureProviderRef<Purchase?> {
  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _CurrentGroupAgeApplicablePurchaseProviderElement
    extends AutoDisposeFutureProviderElement<Purchase?>
    with CurrentGroupAgeApplicablePurchaseRef {
  _CurrentGroupAgeApplicablePurchaseProviderElement(super.provider);

  @override
  String get itemId =>
      (origin as CurrentGroupAgeApplicablePurchaseProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
