// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 削除済購入情報コレクションの参照

@ProviderFor(dpurchaseCollectionRef)
const dpurchaseCollectionRefProvider = DpurchaseCollectionRefFamily._();

/// 削除済購入情報コレクションの参照

final class DpurchaseCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestorePurchaseModel>,
          CollectionReference<FirestorePurchaseModel>,
          CollectionReference<FirestorePurchaseModel>
        >
    with $Provider<CollectionReference<FirestorePurchaseModel>> {
  /// 削除済購入情報コレクションの参照
  const DpurchaseCollectionRefProvider._({
    required DpurchaseCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'dpurchaseCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dpurchaseCollectionRefHash();

  @override
  String toString() {
    return r'dpurchaseCollectionRefProvider'
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
    return dpurchaseCollectionRef(ref, groupId: argument);
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
    return other is DpurchaseCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dpurchaseCollectionRefHash() =>
    r'bca46cc457b2c206fba8e3265d59871cab87efd9';

/// 削除済購入情報コレクションの参照

final class DpurchaseCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestorePurchaseModel>,
          GroupId
        > {
  const DpurchaseCollectionRefFamily._()
    : super(
        retry: null,
        name: r'dpurchaseCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 削除済購入情報コレクションの参照

  DpurchaseCollectionRefProvider call({required GroupId groupId}) =>
      DpurchaseCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'dpurchaseCollectionRefProvider';
}

/// 購入情報ドキュメントの参照

@ProviderFor(dpurchaseDocumentRef)
const dpurchaseDocumentRefProvider = DpurchaseDocumentRefFamily._();

/// 購入情報ドキュメントの参照

final class DpurchaseDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestorePurchaseModel>,
          DocumentReference<FirestorePurchaseModel>,
          DocumentReference<FirestorePurchaseModel>
        >
    with $Provider<DocumentReference<FirestorePurchaseModel>> {
  /// 購入情報ドキュメントの参照
  const DpurchaseDocumentRefProvider._({
    required DpurchaseDocumentRefFamily super.from,
    required ({GroupId groupId, PurchaseId? purchaseId}) super.argument,
  }) : super(
         retry: null,
         name: r'dpurchaseDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dpurchaseDocumentRefHash();

  @override
  String toString() {
    return r'dpurchaseDocumentRefProvider'
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
    return dpurchaseDocumentRef(
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
    return other is DpurchaseDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dpurchaseDocumentRefHash() =>
    r'6f8dd8552f2225d8491cabafe23d4239a91089b3';

/// 購入情報ドキュメントの参照

final class DpurchaseDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestorePurchaseModel>,
          ({GroupId groupId, PurchaseId? purchaseId})
        > {
  const DpurchaseDocumentRefFamily._()
    : super(
        retry: null,
        name: r'dpurchaseDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 購入情報ドキュメントの参照

  DpurchaseDocumentRefProvider call({
    required GroupId groupId,
    PurchaseId? purchaseId,
  }) => DpurchaseDocumentRefProvider._(
    argument: (groupId: groupId, purchaseId: purchaseId),
    from: this,
  );

  @override
  String toString() => r'dpurchaseDocumentRefProvider';
}
