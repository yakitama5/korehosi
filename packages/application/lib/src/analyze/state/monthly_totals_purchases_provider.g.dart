// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'monthly_totals_purchases_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(monthlyTotalsPurchases)
const monthlyTotalsPurchasesProvider = MonthlyTotalsPurchasesFamily._();

final class MonthlyTotalsPurchasesProvider
    extends
        $FunctionalProvider<
          AsyncValue<MonthlyTotalsPurchases>,
          MonthlyTotalsPurchases,
          FutureOr<MonthlyTotalsPurchases>
        >
    with
        $FutureModifier<MonthlyTotalsPurchases>,
        $FutureProvider<MonthlyTotalsPurchases> {
  const MonthlyTotalsPurchasesProvider._({
    required MonthlyTotalsPurchasesFamily super.from,
    required YearMonthRange super.argument,
  }) : super(
         retry: null,
         name: r'monthlyTotalsPurchasesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$monthlyTotalsPurchasesHash();

  @override
  String toString() {
    return r'monthlyTotalsPurchasesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<MonthlyTotalsPurchases> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MonthlyTotalsPurchases> create(Ref ref) {
    final argument = this.argument as YearMonthRange;
    return monthlyTotalsPurchases(ref, range: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MonthlyTotalsPurchasesProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$monthlyTotalsPurchasesHash() =>
    r'c58dadd3d0eb9e92356bdf93ffbec746c7d28202';

final class MonthlyTotalsPurchasesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<MonthlyTotalsPurchases>,
          YearMonthRange
        > {
  const MonthlyTotalsPurchasesFamily._()
    : super(
        retry: null,
        name: r'monthlyTotalsPurchasesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MonthlyTotalsPurchasesProvider call({required YearMonthRange range}) =>
      MonthlyTotalsPurchasesProvider._(argument: range, from: this);

  @override
  String toString() => r'monthlyTotalsPurchasesProvider';
}
