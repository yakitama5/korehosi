// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_group_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 通知メッセージコレクションの参照

@ProviderFor(groupMessageCollectionRef)
const groupMessageCollectionRefProvider = GroupMessageCollectionRefFamily._();

/// 通知メッセージコレクションの参照

final class GroupMessageCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreGroupMessageModel>,
          CollectionReference<FirestoreGroupMessageModel>,
          CollectionReference<FirestoreGroupMessageModel>
        >
    with $Provider<CollectionReference<FirestoreGroupMessageModel>> {
  /// 通知メッセージコレクションの参照
  const GroupMessageCollectionRefProvider._({
    required GroupMessageCollectionRefFamily super.from,
    required GroupId super.argument,
  }) : super(
         retry: null,
         name: r'groupMessageCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupMessageCollectionRefHash();

  @override
  String toString() {
    return r'groupMessageCollectionRefProvider'
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
    return groupMessageCollectionRef(ref, groupId: argument);
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
    return other is GroupMessageCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupMessageCollectionRefHash() =>
    r'e8e0f00fa9dd6f2367c52fec4be4ea8deb38cf7e';

/// 通知メッセージコレクションの参照

final class GroupMessageCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreGroupMessageModel>,
          GroupId
        > {
  const GroupMessageCollectionRefFamily._()
    : super(
        retry: null,
        name: r'groupMessageCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 通知メッセージコレクションの参照

  GroupMessageCollectionRefProvider call({required GroupId groupId}) =>
      GroupMessageCollectionRefProvider._(argument: groupId, from: this);

  @override
  String toString() => r'groupMessageCollectionRefProvider';
}

/// 通知メッセージドキュメントの参照

@ProviderFor(groupMessageDocumentRef)
const groupMessageDocumentRefProvider = GroupMessageDocumentRefFamily._();

/// 通知メッセージドキュメントの参照

final class GroupMessageDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreGroupMessageModel>,
          DocumentReference<FirestoreGroupMessageModel>,
          DocumentReference<FirestoreGroupMessageModel>
        >
    with $Provider<DocumentReference<FirestoreGroupMessageModel>> {
  /// 通知メッセージドキュメントの参照
  const GroupMessageDocumentRefProvider._({
    required GroupMessageDocumentRefFamily super.from,
    required ({GroupId groupId, NotificationMessageId? notificationMessageId})
    super.argument,
  }) : super(
         retry: null,
         name: r'groupMessageDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$groupMessageDocumentRefHash();

  @override
  String toString() {
    return r'groupMessageDocumentRefProvider'
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
              NotificationMessageId? notificationMessageId,
            });
    return groupMessageDocumentRef(
      ref,
      groupId: argument.groupId,
      notificationMessageId: argument.notificationMessageId,
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
    return other is GroupMessageDocumentRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$groupMessageDocumentRefHash() =>
    r'7f0dabfaa21c31f97c60aa9d7e7c09565103d90a';

/// 通知メッセージドキュメントの参照

final class GroupMessageDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreGroupMessageModel>,
          ({GroupId groupId, NotificationMessageId? notificationMessageId})
        > {
  const GroupMessageDocumentRefFamily._()
    : super(
        retry: null,
        name: r'groupMessageDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 通知メッセージドキュメントの参照

  GroupMessageDocumentRefProvider call({
    required GroupId groupId,
    NotificationMessageId? notificationMessageId,
  }) => GroupMessageDocumentRefProvider._(
    argument: (groupId: groupId, notificationMessageId: notificationMessageId),
    from: this,
  );

  @override
  String toString() => r'groupMessageDocumentRefProvider';
}
