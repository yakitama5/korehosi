// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'age_applicable_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ageApplicablePurchaseHash() =>
    r'21e3a6c13f1f26ad3f4f2c8f93f802f5bd2070ff';

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

/// 年齢に応じた購入情報
///
/// Copied from [ageApplicablePurchase].
@ProviderFor(ageApplicablePurchase)
const ageApplicablePurchaseProvider = AgeApplicablePurchaseFamily();

/// 年齢に応じた購入情報
///
/// Copied from [ageApplicablePurchase].
class AgeApplicablePurchaseFamily extends Family<AsyncValue<Purchase?>> {
  /// 年齢に応じた購入情報
  ///
  /// Copied from [ageApplicablePurchase].
  const AgeApplicablePurchaseFamily();

  /// 年齢に応じた購入情報
  ///
  /// Copied from [ageApplicablePurchase].
  AgeApplicablePurchaseProvider call({
    required String groupId,
    required String itemId,
  }) {
    return AgeApplicablePurchaseProvider(groupId: groupId, itemId: itemId);
  }

  @override
  AgeApplicablePurchaseProvider getProviderOverride(
    covariant AgeApplicablePurchaseProvider provider,
  ) {
    return call(groupId: provider.groupId, itemId: provider.itemId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'ageApplicablePurchaseProvider';
}

/// 年齢に応じた購入情報
///
/// Copied from [ageApplicablePurchase].
class AgeApplicablePurchaseProvider
    extends AutoDisposeFutureProvider<Purchase?> {
  /// 年齢に応じた購入情報
  ///
  /// Copied from [ageApplicablePurchase].
  AgeApplicablePurchaseProvider({
    required String groupId,
    required String itemId,
  }) : this._internal(
         (ref) => ageApplicablePurchase(
           ref as AgeApplicablePurchaseRef,
           groupId: groupId,
           itemId: itemId,
         ),
         from: ageApplicablePurchaseProvider,
         name: r'ageApplicablePurchaseProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$ageApplicablePurchaseHash,
         dependencies: AgeApplicablePurchaseFamily._dependencies,
         allTransitiveDependencies:
             AgeApplicablePurchaseFamily._allTransitiveDependencies,
         groupId: groupId,
         itemId: itemId,
       );

  AgeApplicablePurchaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.itemId,
  }) : super.internal();

  final String groupId;
  final String itemId;

  @override
  Override overrideWith(
    FutureOr<Purchase?> Function(AgeApplicablePurchaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AgeApplicablePurchaseProvider._internal(
        (ref) => create(ref as AgeApplicablePurchaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        itemId: itemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Purchase?> createElement() {
    return _AgeApplicablePurchaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AgeApplicablePurchaseProvider &&
        other.groupId == groupId &&
        other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AgeApplicablePurchaseRef on AutoDisposeFutureProviderRef<Purchase?> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _AgeApplicablePurchaseProviderElement
    extends AutoDisposeFutureProviderElement<Purchase?>
    with AgeApplicablePurchaseRef {
  _AgeApplicablePurchaseProviderElement(super.provider);

  @override
  String get groupId => (origin as AgeApplicablePurchaseProvider).groupId;
  @override
  String get itemId => (origin as AgeApplicablePurchaseProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
