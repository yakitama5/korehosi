// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 削除済ユーザーコレクションの参照

@ProviderFor(duserCollectionRef)
const duserCollectionRefProvider = DuserCollectionRefProvider._();

/// 削除済ユーザーコレクションの参照

final class DuserCollectionRefProvider
    extends
        $FunctionalProvider<
          CollectionReference<FirestoreUserModel>,
          CollectionReference<FirestoreUserModel>,
          CollectionReference<FirestoreUserModel>
        >
    with $Provider<CollectionReference<FirestoreUserModel>> {
  /// 削除済ユーザーコレクションの参照
  const DuserCollectionRefProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'duserCollectionRefProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$duserCollectionRefHash();

  @$internal
  @override
  $ProviderElement<CollectionReference<FirestoreUserModel>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CollectionReference<FirestoreUserModel> create(Ref ref) {
    return duserCollectionRef(ref);
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

String _$duserCollectionRefHash() =>
    r'878bc3333c7897a50e8ddab8f7d4799a73bcdd75';

/// 削除済ユーザードキュメントの参照

@ProviderFor(duserDocumentRef)
const duserDocumentRefProvider = DuserDocumentRefFamily._();

/// 削除済ユーザードキュメントの参照

final class DuserDocumentRefProvider
    extends
        $FunctionalProvider<
          DocumentReference<FirestoreUserModel>,
          DocumentReference<FirestoreUserModel>,
          DocumentReference<FirestoreUserModel>
        >
    with $Provider<DocumentReference<FirestoreUserModel>> {
  /// 削除済ユーザードキュメントの参照
  const DuserDocumentRefProvider._({
    required DuserDocumentRefFamily super.from,
    required UserId? super.argument,
  }) : super(
         retry: null,
         name: r'duserDocumentRefProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$duserDocumentRefHash();

  @override
  String toString() {
    return r'duserDocumentRefProvider'
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
    return duserDocumentRef(ref, userId: argument);
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
    return other is DuserDocumentRefProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$duserDocumentRefHash() => r'60e283c2ea8de6d5e92cacec225f2f3bae7beeb9';

/// 削除済ユーザードキュメントの参照

final class DuserDocumentRefFamily extends $Family
    with
        $FunctionalFamilyOverride<
          DocumentReference<FirestoreUserModel>,
          UserId?
        > {
  const DuserDocumentRefFamily._()
    : super(
        retry: null,
        name: r'duserDocumentRefProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 削除済ユーザードキュメントの参照

  DuserDocumentRefProvider call({UserId? userId}) =>
      DuserDocumentRefProvider._(argument: userId, from: this);

  @override
  String toString() => r'duserDocumentRefProvider';
}
