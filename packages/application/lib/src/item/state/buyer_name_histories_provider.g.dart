// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'buyer_name_histories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(buyerNameHistories)
const buyerNameHistoriesProvider = BuyerNameHistoriesFamily._();

final class BuyerNameHistoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  const BuyerNameHistoriesProvider._({
    required BuyerNameHistoriesFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'buyerNameHistoriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$buyerNameHistoriesHash();

  @override
  String toString() {
    return r'buyerNameHistoriesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    final argument = this.argument as GroupId;
    return buyerNameHistories(ref, groupId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BuyerNameHistoriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$buyerNameHistoriesHash() =>
    r'ce9923d0c698b54ce721e2c6b46899fdb391741b';

final class BuyerNameHistoriesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<String>>, GroupId> {
  const BuyerNameHistoriesFamily._()
    : super(
        retry: null,
        name: r'buyerNameHistoriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BuyerNameHistoriesProvider call({required GroupId groupId}) =>
      BuyerNameHistoriesProvider._(argument: groupId, from: this);

  @override
  String toString() => r'buyerNameHistoriesProvider';
}
