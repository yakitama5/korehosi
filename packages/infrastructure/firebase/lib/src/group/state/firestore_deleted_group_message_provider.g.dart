// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_group_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 削除済通知メッセージコレクションの参照

@ProviderFor(dgroupMessageCollectionRef)
const dgroupMessageCollectionRefProvider = DgroupMessageCollectionRefFamily._();

/// 削除済通知メッセージコレクションの参照

final class DgroupMessageCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreGroupMessageModel>,
          CollectionReference<FirestoreGroupMessageModel>,
          CollectionReference<FirestoreGroupMessageModel>
        >
    with $Provider<CollectionReference<FirestoreGroupMessageModel>> {
  /// 削除済通知メッセージコレクションの参照
  const DgroupMessageCollectionRefProvider._({
    required DgroupMessageCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'dgroupMessageCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dgroupMessageCollectionRefHash();

  @override
  String toString() {
    return r'dgroupMessageCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreGroupMessageModel>>
  $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreGroupMessageModel> create(Ref ref) {
    final argument = this.argument as GroupId;
    return dgroupMessageCollectionRef(ref, groupId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    CollectionReference<FirestoreGroupMessageModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreGroupMessageModel>>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DgroupMessageCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dgroupMessageCollectionRefHash() =>
    r'b5225ee299ecd2a8a6e38ffb3ece25fb6077ad5b';

/// 削除済通知メッセージコレクションの参照

final class DgroupMessageCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreGroupMessageModel>,
          GroupId
        > {
  const DgroupMessageCollectionRefFamily._()
    : super(
        retry: null,
        name: r'dgroupMessageCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 削除済通知メッセージコレクションの参照

  DgroupMessageCollectionRefProvider call({required GroupId groupId}) =>
      DgroupMessageCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'dgroupMessageCollectionRefProvider';
}

/// 削除済通知メッセージドキュメントの参照

@ProviderFor(dgroupMessageDocumentRef)
const dgroupMessageDocumentRefProvider = DgroupMessageDocumentRefFamily._();

/// 削除済通知メッセージドキュメントの参照

final class DgroupMessageDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreGroupMessageModel>,
          DocumentReference<FirestoreGroupMessageModel>,
          DocumentReference<FirestoreGroupMessageModel>
        >
    with $Provider<DocumentReference<FirestoreGroupMessageModel>> {
  /// 削除済通知メッセージドキュメントの参照
  const DgroupMessageDocumentRefProvider._({
    required DgroupMessageDocumentRefFamily super.from,
    required ({GroupId groupId, NotificationMessageId? dnotificationMessageId})
    super.argument,
  }) : super(
         retry: null,
         name: r'dgroupMessageDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dgroupMessageDocumentRefHash();

  @override
  String toString() {
    return r'dgroupMessageDocumentRefProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreGroupMessageModel>>
  $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreGroupMessageModel> create(Ref ref) {
    final argument =
        this.argument
            as ({
              GroupId groupId,
              NotificationMessageId? dnotificationMessageId,
            });
    return dgroupMessageDocumentRef(
      ref,
      groupId: argument.groupId,
      dnotificationMessageId: argument.dnotificationMessageId,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    DocumentReference<FirestoreGroupMessageModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<DocumentReference<FirestoreGroupMessageModel>>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DgroupMessageDocumentRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dgroupMessageDocumentRefHash() =>
    r'0fa6d8ac40505b10c6758a0b1ea2ec14517e433c';

/// 削除済通知メッセージドキュメントの参照

final class DgroupMessageDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreGroupMessageModel>,
          ({GroupId groupId, NotificationMessageId? dnotificationMessageId})
        > {
  const DgroupMessageDocumentRefFamily._()
    : super(
        retry: null,
        name: r'dgroupMessageDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 削除済通知メッセージドキュメントの参照

  DgroupMessageDocumentRefProvider call({
    required GroupId groupId,
    NotificationMessageId? dnotificationMessageId,
  }) => DgroupMessageDocumentRefProvider._(
    argument: (
      groupId: groupId,
      dnotificationMessageId: dnotificationMessageId,
    ),
    from: this,
  );

  @override
  String toString() => r'dgroupMessageDocumentRefProvider';
}
