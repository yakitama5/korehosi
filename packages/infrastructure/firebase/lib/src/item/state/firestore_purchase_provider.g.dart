// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 購入情報コレクションの参照

@ProviderFor(purchaseCollectionRef)
const purchaseCollectionRefProvider = PurchaseCollectionRefFamily._();

/// 購入情報コレクションの参照

final class PurchaseCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestorePurchaseModel>,
          CollectionReference<FirestorePurchaseModel>,
          CollectionReference<FirestorePurchaseModel>
        >
    with $Provider<CollectionReference<FirestorePurchaseModel>> {
  /// 購入情報コレクションの参照
  const PurchaseCollectionRefProvider._({
    required PurchaseCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'purchaseCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$purchaseCollectionRefHash();

  @override
  String toString() {
    return r'purchaseCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestorePurchaseModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestorePurchaseModel> create(Ref ref) {
    final argument = this.argument as GroupId;
    return purchaseCollectionRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    CollectionReference<FirestorePurchaseModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestorePurchaseModel>>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PurchaseCollectionRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$purchaseCollectionRefHash() =>
    r'01a420c35a0ab49b4de5302f01f116d0effcd9ad';

/// 購入情報コレクションの参照

final class PurchaseCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestorePurchaseModel>,
          GroupId
        > {
  const PurchaseCollectionRefFamily._()
    : super(
        retry: null,
        name: r'purchaseCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 購入情報コレクションの参照

  PurchaseCollectionRefProvider call({required GroupId groupId}) =>
      PurchaseCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'purchaseCollectionRefProvider';
}

/// 購入情報ドキュメントの参照

@ProviderFor(purchaseDocumentRef)
const purchaseDocumentRefProvider = PurchaseDocumentRefFamily._();

/// 購入情報ドキュメントの参照

final class PurchaseDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestorePurchaseModel>,
          DocumentReference<FirestorePurchaseModel>,
          DocumentReference<FirestorePurchaseModel>
        >
    with $Provider<DocumentReference<FirestorePurchaseModel>> {
  /// 購入情報ドキュメントの参照
  const PurchaseDocumentRefProvider._({
    required PurchaseDocumentRefFamily super.from,
    required ({GroupId groupId, PurchaseId? purchaseId}) super.argument,
  }) : super(
         retry: null,
         name: r'purchaseDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$purchaseDocumentRefHash();

  @override
  String toString() {
    return r'purchaseDocumentRefProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestorePurchaseModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestorePurchaseModel> create(Ref ref) {
    final argument =
        this.argument as ({GroupId groupId, PurchaseId? purchaseId});
    return purchaseDocumentRef(
      ref,
      groupId: argument.groupId,
      purchaseId: argument.purchaseId,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DocumentReference<FirestorePurchaseModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DocumentReference<FirestorePurchaseModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PurchaseDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$purchaseDocumentRefHash() =>
    r'8318de94dbf6c659fe1cc30f3d3957a22d6cbaa4';

/// 購入情報ドキュメントの参照

final class PurchaseDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestorePurchaseModel>,
          ({GroupId groupId, PurchaseId? purchaseId})
        > {
  const PurchaseDocumentRefFamily._()
    : super(
        retry: null,
        name: r'purchaseDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 購入情報ドキュメントの参照

  PurchaseDocumentRefProvider call({
    required GroupId groupId,
    PurchaseId? purchaseId,
  }) => PurchaseDocumentRefProvider._(
    argument: (groupId: groupId, purchaseId: purchaseId),
    from: this,
  );

  @override
  String toString() => r'purchaseDocumentRefProvider';
}
