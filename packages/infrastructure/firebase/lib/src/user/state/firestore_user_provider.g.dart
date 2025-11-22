// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ユーザーコレクションの参照

@ProviderFor(userCollectionRef)
const userCollectionRefProvider = UserCollectionRefProvider._();

/// ユーザーコレクションの参照

final class UserCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreUserModel>,
          CollectionReference<FirestoreUserModel>,
          CollectionReference<FirestoreUserModel>
        >
    with $Provider<CollectionReference<FirestoreUserModel>> {
  /// ユーザーコレクションの参照
  const UserCollectionRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userCollectionRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userCollectionRefHash();

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreUserModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreUserModel> create(Ref ref) {
    return userCollectionRef(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollectionReference<FirestoreUserModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<CollectionReference<FirestoreUserModel>>(value),
    );
  }
}

String _$userCollectionRefHash() => r'1a0a25e375965d7d6d7afd4fe5d5e5207486865f';

/// ユーザードキュメントの参照

@ProviderFor(userDocumentRef)
const userDocumentRefProvider = UserDocumentRefFamily._();

/// ユーザードキュメントの参照

final class UserDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreUserModel>,
          DocumentReference<FirestoreUserModel>,
          DocumentReference<FirestoreUserModel>
        >
    with $Provider<DocumentReference<FirestoreUserModel>> {
  /// ユーザードキュメントの参照
  const UserDocumentRefProvider._({
    required UserDocumentRefFamily super.from,
    required UserId? super.argument,
  }) : super(
         retry: null,
         name: r'userDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userDocumentRefHash();

  @override
  String toString() {
    return r'userDocumentRefProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<DocumentReference<FirestoreUserModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DocumentReference<FirestoreUserModel> create(Ref ref) {
    final argument = this.argument as UserId?;
    return userDocumentRef(ref, userId: argument);
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
    return other is UserDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userDocumentRefHash() => r'b38ba0f7fbe0e0d4e4daa7190481e4123f794bdf';

/// ユーザードキュメントの参照

final class UserDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreUserModel>,
          UserId?
        > {
  const UserDocumentRefFamily._()
    : super(
        retry: null,
        name: r'userDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// ユーザードキュメントの参照

  UserDocumentRefProvider call({UserId? userId}) =>
      UserDocumentRefProvider._(argument: userId, from: this);

  @override
  String toString() => r'userDocumentRefProvider';
}
