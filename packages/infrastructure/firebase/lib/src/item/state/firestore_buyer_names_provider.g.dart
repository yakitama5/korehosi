// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_buyer_names_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// かった人コレクションの参照

@ProviderFor(buyerNameCollectionRef)
const buyerNameCollectionRefProvider = BuyerNameCollectionRefFamily._();

/// かった人コレクションの参照

final class BuyerNameCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreBuyerNameModel>,
          CollectionReference<FirestoreBuyerNameModel>,
          CollectionReference<FirestoreBuyerNameModel>
        >
    with $Provider<CollectionReference<FirestoreBuyerNameModel>> {
  /// かった人コレクションの参照
  const BuyerNameCollectionRefProvider._({
    required BuyerNameCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'buyerNameCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$buyerNameCollectionRefHash();

  @override
  String toString() {
    return r'buyerNameCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreBuyerNameModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreBuyerNameModel> create(Ref ref) {
    final argument = this.argument as GroupId;
    return buyerNameCollectionRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    CollectionReference<FirestoreBuyerNameModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreBuyerNameModel>>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BuyerNameCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$buyerNameCollectionRefHash() =>
    r'76241d5200b78fbf9a7ac7356f829a5aac65db19';

/// かった人コレクションの参照

final class BuyerNameCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreBuyerNameModel>,
          GroupId
        > {
  const BuyerNameCollectionRefFamily._()
    : super(
        retry: null,
        name: r'buyerNameCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// かった人コレクションの参照

  BuyerNameCollectionRefProvider call({required GroupId groupId}) =>
      BuyerNameCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'buyerNameCollectionRefProvider';
}
