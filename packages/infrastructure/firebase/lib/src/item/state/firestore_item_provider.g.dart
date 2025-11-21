// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 欲しい物コレクションの参照

@ProviderFor(itemCollectionRef)
const itemCollectionRefProvider = ItemCollectionRefFamily._();

/// 欲しい物コレクションの参照

final class ItemCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreItemModel>,
          CollectionReference<FirestoreItemModel>,
          CollectionReference<FirestoreItemModel>
        >
    with $Provider<CollectionReference<FirestoreItemModel>> {
  /// 欲しい物コレクションの参照
  const ItemCollectionRefProvider._({
    required ItemCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'itemCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$itemCollectionRefHash();

  @override
  String toString() {
    return r'itemCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreItemModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreItemModel> create(Ref ref) {
    final argument = this.argument as GroupId;
    return itemCollectionRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollectionReference<FirestoreItemModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreItemModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemCollectionRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemCollectionRefHash() => r'0b9e812983963abf2c36429dd1bf4e9f9ba38ea0';

/// 欲しい物コレクションの参照

final class ItemCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreItemModel>,
          GroupId
        > {
  const ItemCollectionRefFamily._()
    : super(
        retry: null,
        name: r'itemCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 欲しい物コレクションの参照

  ItemCollectionRefProvider call({required GroupId groupId}) =>
      ItemCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'itemCollectionRefProvider';
}

/// 欲しい物ドキュメントの参照

@ProviderFor(itemDocumentRef)
const itemDocumentRefProvider = ItemDocumentRefFamily._();

/// 欲しい物ドキュメントの参照

final class ItemDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreItemModel>,
          DocumentReference<FirestoreItemModel>,
          DocumentReference<FirestoreItemModel>
        >
    with $Provider<DocumentReference<FirestoreItemModel>> {
  /// 欲しい物ドキュメントの参照
  const ItemDocumentRefProvider._({
    required ItemDocumentRefFamily super.from,
    required ({GroupId groupId, ItemId? itemId}) super.argument,
  }) : super(
         retry: null,
         name: r'itemDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$itemDocumentRefHash();

  @override
  String toString() {
    return r'itemDocumentRefProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreItemModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreItemModel> create(Ref ref) {
    final argument = this.argument as ({GroupId groupId, ItemId? itemId});
    return itemDocumentRef(
      ref,
      groupId: argument.groupId,
      itemId: argument.itemId,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DocumentReference<FirestoreItemModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DocumentReference<FirestoreItemModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ItemDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemDocumentRefHash() => r'b3acbc542c3b7f17d0111d050196e98eed2ba3ac';

/// 欲しい物ドキュメントの参照

final class ItemDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreItemModel>,
          ({GroupId groupId, ItemId? itemId})
        > {
  const ItemDocumentRefFamily._()
    : super(
        retry: null,
        name: r'itemDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 欲しい物ドキュメントの参照

  ItemDocumentRefProvider call({required GroupId groupId, ItemId? itemId}) =>
      ItemDocumentRefProvider._(
        argument: (groupId: groupId, itemId: itemId),
        from: this,
      );

  @override
  String toString() => r'itemDocumentRefProvider';
}
