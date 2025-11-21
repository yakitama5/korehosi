// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_participant_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// グループ参加者コレクションの参照

@ProviderFor(participantCollectionRef)
const participantCollectionRefProvider = ParticipantCollectionRefFamily._();

/// グループ参加者コレクションの参照

final class ParticipantCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreUserModel>,
          CollectionReference<FirestoreUserModel>,
          CollectionReference<FirestoreUserModel>
        >
    with $Provider<CollectionReference<FirestoreUserModel>> {
  /// グループ参加者コレクションの参照
  const ParticipantCollectionRefProvider._({
    required ParticipantCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'participantCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$participantCollectionRefHash();

  @override
  String toString() {
    return r'participantCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreUserModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreUserModel> create(Ref ref) {
    final argument = this.argument as GroupId;
    return participantCollectionRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollectionReference<FirestoreUserModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreUserModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ParticipantCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$participantCollectionRefHash() =>
    r'96d30390a45d92058efd5cfdab3b18a47dd918ae';

/// グループ参加者コレクションの参照

final class ParticipantCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreUserModel>,
          GroupId
        > {
  const ParticipantCollectionRefFamily._()
    : super(
        retry: null,
        name: r'participantCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// グループ参加者コレクションの参照

  ParticipantCollectionRefProvider call({required GroupId groupId}) =>
      ParticipantCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'participantCollectionRefProvider';
}

/// グループ参加者ドキュメントの参照

@ProviderFor(participantDocumentRef)
const participantDocumentRefProvider = ParticipantDocumentRefFamily._();

/// グループ参加者ドキュメントの参照

final class ParticipantDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreUserModel>,
          DocumentReference<FirestoreUserModel>,
          DocumentReference<FirestoreUserModel>
        >
    with $Provider<DocumentReference<FirestoreUserModel>> {
  /// グループ参加者ドキュメントの参照
  const ParticipantDocumentRefProvider._({
    required ParticipantDocumentRefFamily super.from,
    required ({GroupId groupId, UserId? participantId}) super.argument,
  }) : super(
         retry: null,
         name: r'participantDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$participantDocumentRefHash();

  @override
  String toString() {
    return r'participantDocumentRefProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreUserModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreUserModel> create(Ref ref) {
    final argument =
        this.argument as ({GroupId groupId, UserId? participantId});
    return participantDocumentRef(
      ref,
      groupId: argument.groupId,
      participantId: argument.participantId,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DocumentReference<FirestoreUserModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DocumentReference<FirestoreUserModel>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ParticipantDocumentRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$participantDocumentRefHash() =>
    r'ecc1ff8e5d45b351b0ce28b70793000ce624cd3a';

/// グループ参加者ドキュメントの参照

final class ParticipantDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreUserModel>,
          ({GroupId groupId, UserId? participantId})
        > {
  const ParticipantDocumentRefFamily._()
    : super(
        retry: null,
        name: r'participantDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// グループ参加者ドキュメントの参照

  ParticipantDocumentRefProvider call({
    required GroupId groupId,
    UserId? participantId,
  }) => ParticipantDocumentRefProvider._(
    argument: (groupId: groupId, participantId: participantId),
    from: this,
  );

  @override
  String toString() => r'participantDocumentRefProvider';
}
