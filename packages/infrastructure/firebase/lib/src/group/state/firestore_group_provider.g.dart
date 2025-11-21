// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループコレクションの参照

@ProviderFor(groupCollectionRef)
const groupCollectionRefProvider = GroupCollectionRefProvider._();

/// グループコレクションの参照

final class GroupCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreGroupModel>,
          CollectionReference<FirestoreGroupModel>,
          CollectionReference<FirestoreGroupModel>
        >
    with $Provider<CollectionReference<FirestoreGroupModel>> {
  /// グループコレクションの参照
  const GroupCollectionRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupCollectionRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupCollectionRefHash();

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreGroupModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreGroupModel> create(Ref ref) {
    return groupCollectionRef(ref);
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

String _$groupCollectionRefHash() =>
    r'390fd2c4d8fa9219e054e97f98886172ef6010fc';

/// グループドキュメントの参照

@ProviderFor(groupDocumentRef)
const groupDocumentRefProvider = GroupDocumentRefFamily._();

/// グループドキュメントの参照

final class GroupDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreGroupModel>,
          DocumentReference<FirestoreGroupModel>,
          DocumentReference<FirestoreGroupModel>
        >
    with $Provider<DocumentReference<FirestoreGroupModel>> {
  /// グループドキュメントの参照
  const GroupDocumentRefProvider._({
    required GroupDocumentRefFamily super.from,
    required GroupId? super.argument,
  }) : super(
         retry: null,
         name: r'groupDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupDocumentRefHash();

  @override
  String toString() {
    return r'groupDocumentRefProvider'
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
    return groupDocumentRef(ref, groupId: argument);
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
    return other is GroupDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupDocumentRefHash() => r'2d0927960b13e6dc164d6d5e5ef27e87adf9a300';

/// グループドキュメントの参照

final class GroupDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreGroupModel>,
          GroupId?
        > {
  const GroupDocumentRefFamily._()
    : super(
        retry: null,
        name: r'groupDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// グループドキュメントの参照

  GroupDocumentRefProvider call({GroupId? groupId}) =>
      GroupDocumentRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'groupDocumentRefProvider';
}
