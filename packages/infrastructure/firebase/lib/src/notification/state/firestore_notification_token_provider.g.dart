// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_notification_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 通知FCMトークンコレクションの参照

@ProviderFor(notificationTokenCollectionRef)
const notificationTokenCollectionRefProvider =
    NotificationTokenCollectionRefFamily._();

/// 通知FCMトークンコレクションの参照

final class NotificationTokenCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreNotificationTokenModel>,
          CollectionReference<FirestoreNotificationTokenModel>,
          CollectionReference<FirestoreNotificationTokenModel>
        >
    with $Provider<CollectionReference<FirestoreNotificationTokenModel>> {
  /// 通知FCMトークンコレクションの参照
  const NotificationTokenCollectionRefProvider._({
    required NotificationTokenCollectionRefFamily super.from,
    required UserId super.argument,
  }) : super(
         retry: null,
         name: r'notificationTokenCollectionRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$notificationTokenCollectionRefHash();

  @override
  String toString() {
    return r'notificationTokenCollectionRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreNotificationTokenModel>>
  $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreNotificationTokenModel> create(Ref ref) {
    final argument = this.argument as UserId;
    return notificationTokenCollectionRef(ref, userId: argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    CollectionReference<FirestoreNotificationTokenModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<
            CollectionReference<FirestoreNotificationTokenModel>
          >(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationTokenCollectionRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationTokenCollectionRefHash() =>
    r'81fd226347bc7e957498d58c707b38d244eaa5f9';

/// 通知FCMトークンコレクションの参照

final class NotificationTokenCollectionRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          CollectionReference<FirestoreNotificationTokenModel>,
          UserId
        > {
  const NotificationTokenCollectionRefFamily._()
    : super(
        retry: null,
        name: r'notificationTokenCollectionRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 通知FCMトークンコレクションの参照

  NotificationTokenCollectionRefProvider call({required UserId userId}) =>
      NotificationTokenCollectionRefProvider._(argument: userId, from: this);

  @override
  String toString() => r'notificationTokenCollectionRefProvider';
}

/// 通知FCMトークンドキュメントの参照

@ProviderFor(notificationTokenDocumentRef)
const notificationTokenDocumentRefProvider =
    NotificationTokenDocumentRefFamily._();

/// 通知FCMトークンドキュメントの参照

final class NotificationTokenDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreNotificationTokenModel>,
          DocumentReference<FirestoreNotificationTokenModel>,
          DocumentReference<FirestoreNotificationTokenModel>
        >
    with $Provider<DocumentReference<FirestoreNotificationTokenModel>> {
  /// 通知FCMトークンドキュメントの参照
  const NotificationTokenDocumentRefProvider._({
    required NotificationTokenDocumentRefFamily super.from,
    required ({UserId userId, String? token}) super.argument,
  }) : super(
         retry: null,
         name: r'notificationTokenDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$notificationTokenDocumentRefHash();

  @override
  String toString() {
    return r'notificationTokenDocumentRefProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreNotificationTokenModel>>
  $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreNotificationTokenModel> create(Ref ref) {
    final argument = this.argument as ({UserId userId, String? token});
    return notificationTokenDocumentRef(
      ref,
      userId: argument.userId,
      token: argument.token,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    DocumentReference<FirestoreNotificationTokenModel> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<
            DocumentReference<FirestoreNotificationTokenModel>
          >(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationTokenDocumentRefProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationTokenDocumentRefHash() =>
    r'c8eb6eb1bc70391accafdc15ceabb075df5d7408';

/// 通知FCMトークンドキュメントの参照

final class NotificationTokenDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreNotificationTokenModel>,
          ({UserId userId, String? token})
        > {
  const NotificationTokenDocumentRefFamily._()
    : super(
        retry: null,
        name: r'notificationTokenDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 通知FCMトークンドキュメントの参照

  NotificationTokenDocumentRefProvider call({
    required UserId userId,
    String? token,
  }) => NotificationTokenDocumentRefProvider._(
    argument: (userId: userId, token: token),
    from: this,
  );

  @override
  String toString() => r'notificationTokenDocumentRefProvider';
}
