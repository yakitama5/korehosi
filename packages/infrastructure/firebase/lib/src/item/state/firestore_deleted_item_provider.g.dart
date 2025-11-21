// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 削除済欲しい物コレクションの参照

@ProviderFor(ditemCollectionRef)
const ditemCollectionRefProvider = DitemCollectionRefFamily._();

/// 削除済欲しい物コレクションの参照

final class DitemCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreItemModel>,
          CollectionReference<FirestoreItemModel>,
          CollectionReference<FirestoreItemModel>
        >
    with $Provider<CollectionReference<FirestoreItemModel>> {
  /// 削除済欲しい物コレクションの参照
  const DitemCollectionRefProvider._({
    required DitemCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'ditemCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ditemCollectionRefHash();

  @override
  String toString() {
    return r'ditemCollectionRefProvider'
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
    return ditemCollectionRef(ref, groupId: argument);
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
    return other is DitemCollectionRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ditemCollectionRefHash() =>
    r'12c9a53535af95e88d5e4362e296e5ce09e8422e';

/// 削除済欲しい物コレクションの参照

final class DitemCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreItemModel>,
          GroupId
        > {
  const DitemCollectionRefFamily._()
    : super(
        retry: null,
        name: r'ditemCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 削除済欲しい物コレクションの参照

  DitemCollectionRefProvider call({required GroupId groupId}) =>
      DitemCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'ditemCollectionRefProvider';
}

/// 欲しい物ドキュメントの参照

@ProviderFor(ditemDocumentRef)
const ditemDocumentRefProvider = DitemDocumentRefFamily._();

/// 欲しい物ドキュメントの参照

final class DitemDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreItemModel>,
          DocumentReference<FirestoreItemModel>,
          DocumentReference<FirestoreItemModel>
        >
    with $Provider<DocumentReference<FirestoreItemModel>> {
  /// 欲しい物ドキュメントの参照
  const DitemDocumentRefProvider._({
    required DitemDocumentRefFamily super.from,
    required ({GroupId groupId, ItemId? itemId}) super.argument,
  }) : super(
         retry: null,
         name: r'ditemDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ditemDocumentRefHash();

  @override
  String toString() {
    return r'ditemDocumentRefProvider'
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
    return ditemDocumentRef(
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
    return other is DitemDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ditemDocumentRefHash() => r'b36077509e3218e1515a1b2be267beede3760f99';

/// 欲しい物ドキュメントの参照

final class DitemDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreItemModel>,
          ({GroupId groupId, ItemId? itemId})
        > {
  const DitemDocumentRefFamily._()
    : super(
        retry: null,
        name: r'ditemDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 欲しい物ドキュメントの参照

  DitemDocumentRefProvider call({required GroupId groupId, ItemId? itemId}) =>
      DitemDocumentRefProvider._(
        argument: (groupId: groupId, itemId: itemId),
        from: this,
      );

  @override
  String toString() => r'ditemDocumentRefProvider';
}
