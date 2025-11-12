// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'monthly_totals_purchases_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monthlyTotalsPurchasesHash() =>
    r'7ef72722198027695976129fa8867f2590e70572';

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

/// See also [monthlyTotalsPurchases].
@ProviderFor(monthlyTotalsPurchases)
const monthlyTotalsPurchasesProvider = MonthlyTotalsPurchasesFamily();

/// See also [monthlyTotalsPurchases].
class MonthlyTotalsPurchasesFamily
    extends Family<AsyncValue<MonthlyTotalsPurchases>> {
  /// See also [monthlyTotalsPurchases].
  const MonthlyTotalsPurchasesFamily();

  /// See also [monthlyTotalsPurchases].
  MonthlyTotalsPurchasesProvider call({required YearMonthRange range}) {
    return MonthlyTotalsPurchasesProvider(range: range);
  }

  @override
  MonthlyTotalsPurchasesProvider getProviderOverride(
    covariant MonthlyTotalsPurchasesProvider provider,
  ) {
    return call(range: provider.range);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'monthlyTotalsPurchasesProvider';
}

/// See also [monthlyTotalsPurchases].
class MonthlyTotalsPurchasesProvider
    extends AutoDisposeFutureProvider<MonthlyTotalsPurchases> {
  /// See also [monthlyTotalsPurchases].
  MonthlyTotalsPurchasesProvider({required YearMonthRange range})
    : this._internal(
        (ref) => monthlyTotalsPurchases(
          ref as MonthlyTotalsPurchasesRef,
          range: range,
        ),
        from: monthlyTotalsPurchasesProvider,
        name: r'monthlyTotalsPurchasesProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$monthlyTotalsPurchasesHash,
        dependencies: MonthlyTotalsPurchasesFamily._dependencies,
        allTransitiveDependencies:
            MonthlyTotalsPurchasesFamily._allTransitiveDependencies,
        range: range,
      );

  MonthlyTotalsPurchasesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.range,
  }) : super.internal();

  final YearMonthRange range;

  @override
  Override overrideWith(
    FutureOr<MonthlyTotalsPurchases> Function(
      MonthlyTotalsPurchasesRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MonthlyTotalsPurchasesProvider._internal(
        (ref) => create(ref as MonthlyTotalsPurchasesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        range: range,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MonthlyTotalsPurchases> createElement() {
    return _MonthlyTotalsPurchasesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MonthlyTotalsPurchasesProvider && other.range == range;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, range.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MonthlyTotalsPurchasesRef
    on AutoDisposeFutureProviderRef<MonthlyTotalsPurchases> {
  /// The parameter `range` of this provider.
  YearMonthRange get range;
}

class _MonthlyTotalsPurchasesProviderElement
    extends AutoDisposeFutureProviderElement<MonthlyTotalsPurchases>
    with MonthlyTotalsPurchasesRef {
  _MonthlyTotalsPurchasesProviderElement(super.provider);

  @override
  YearMonthRange get range => (origin as MonthlyTotalsPurchasesProvider).range;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
