// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループコレクションの参照

@ProviderFor(dgroupCollectionRef)
const dgroupCollectionRefProvider = DgroupCollectionRefProvider._();

/// グループコレクションの参照

final class DgroupCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreGroupModel>,
          CollectionReference<FirestoreGroupModel>,
          CollectionReference<FirestoreGroupModel>
        >
    with $Provider<CollectionReference<FirestoreGroupModel>> {
  /// グループコレクションの参照
  const DgroupCollectionRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dgroupCollectionRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dgroupCollectionRefHash();

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreGroupModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreGroupModel> create(Ref ref) {
    return dgroupCollectionRef(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollectionReference<FirestoreGroupModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreGroupModel>>(value),
    );
  }
}

String _$dgroupCollectionRefHash() =>
    r'80b5e58c1744b1c77ad51db3a7ebef6b3c30ed3c';

/// グループドキュメントの参照

@ProviderFor(dgroupDocumentRef)
const dgroupDocumentRefProvider = DgroupDocumentRefFamily._();

/// グループドキュメントの参照

final class DgroupDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreGroupModel>,
          DocumentReference<FirestoreGroupModel>,
          DocumentReference<FirestoreGroupModel>
        >
    with $Provider<DocumentReference<FirestoreGroupModel>> {
  /// グループドキュメントの参照
  const DgroupDocumentRefProvider._({
    required DgroupDocumentRefFamily super.from,
    required GroupId? super.argument,
  }) : super(
         retry: null,
         name: r'dgroupDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dgroupDocumentRefHash();

  @override
  String toString() {
    return r'dgroupDocumentRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreGroupModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreGroupModel> create(Ref ref) {
    final argument = this.argument as GroupId?;
    return dgroupDocumentRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DocumentReference<FirestoreGroupModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DocumentReference<FirestoreGroupModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DgroupDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dgroupDocumentRefHash() => r'ee974465928431616c5779cc0d332895582c7d42';

/// グループドキュメントの参照

final class DgroupDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreGroupModel>,
          GroupId?
        > {
  const DgroupDocumentRefFamily._()
    : super(
        retry: null,
        name: r'dgroupDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// グループドキュメントの参照

  DgroupDocumentRefProvider call({GroupId? groupId}) =>
      DgroupDocumentRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'dgroupDocumentRefProvider';
}
