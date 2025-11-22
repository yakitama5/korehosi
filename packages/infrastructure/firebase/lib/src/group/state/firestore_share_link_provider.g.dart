// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_share_link_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループ共有リンクコレクションの参照

@ProviderFor(shareLinkCollectionRef)
const shareLinkCollectionRefProvider = ShareLinkCollectionRefProvider._();

/// グループ共有リンクコレクションの参照

final class ShareLinkCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreShareLinkModel>,
          CollectionReference<FirestoreShareLinkModel>,
          CollectionReference<FirestoreShareLinkModel>
        >
    with $Provider<CollectionReference<FirestoreShareLinkModel>> {
  /// グループ共有リンクコレクションの参照
  const ShareLinkCollectionRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shareLinkCollectionRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shareLinkCollectionRefHash();

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreShareLinkModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreShareLinkModel> create(Ref ref) {
    return shareLinkCollectionRef(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    CollectionReference<FirestoreShareLinkModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreShareLinkModel>>(
            value,
          ),
    );
  }
}

String _$shareLinkCollectionRefHash() =>
    r'4b2ce6b3b490325f3b8fca628edf82880c42ed93';

/// グループ共有リンクドキュメントの参照

@ProviderFor(shareLinkDocumentRef)
const shareLinkDocumentRefProvider = ShareLinkDocumentRefFamily._();

/// グループ共有リンクドキュメントの参照

final class ShareLinkDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreShareLinkModel>,
          DocumentReference<FirestoreShareLinkModel>,
          DocumentReference<FirestoreShareLinkModel>
        >
    with $Provider<DocumentReference<FirestoreShareLinkModel>> {
  /// グループ共有リンクドキュメントの参照
  const ShareLinkDocumentRefProvider._({
    required ShareLinkDocumentRefFamily super.from,
    required ShareLinkId? super.argument,
  }) : super(
         retry: null,
         name: r'shareLinkDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$shareLinkDocumentRefHash();

  @override
  String toString() {
    return r'shareLinkDocumentRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreShareLinkModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreShareLinkModel> create(Ref ref) {
    final argument = this.argument as ShareLinkId?;
    return shareLinkDocumentRef(ref, shareLinkId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DocumentReference<FirestoreShareLinkModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DocumentReference<FirestoreShareLinkModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ShareLinkDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$shareLinkDocumentRefHash() =>
    r'29aeeb1352ab454e4ab15348b5d30db519ae2f30';

/// グループ共有リンクドキュメントの参照

final class ShareLinkDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreShareLinkModel>,
          ShareLinkId?
        > {
  const ShareLinkDocumentRefFamily._()
    : super(
        retry: null,
        name: r'shareLinkDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// グループ共有リンクドキュメントの参照

  ShareLinkDocumentRefProvider call({ShareLinkId? shareLinkId}) =>
      ShareLinkDocumentRefProvider._(argument: shareLinkId, from: this);

  @override
  String toString() => r'shareLinkDocumentRefProvider';
}
