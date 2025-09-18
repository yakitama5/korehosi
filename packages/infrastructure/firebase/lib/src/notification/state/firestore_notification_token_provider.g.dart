// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_notification_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationTokenCollectionRefHash() =>
    r'697d1c61f6fae706c1805c9d40c0640767800f7f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 通知FCMトークンコレクションの参照
///
/// Copied from [notificationTokenCollectionRef].
@ProviderFor(notificationTokenCollectionRef)
const notificationTokenCollectionRefProvider =
    NotificationTokenCollectionRefFamily();

/// 通知FCMトークンコレクションの参照
///
/// Copied from [notificationTokenCollectionRef].
class NotificationTokenCollectionRefFamily
    extends Family<CollectionReference<FirestoreNotificationTokenModel>> {
  /// 通知FCMトークンコレクションの参照
  ///
  /// Copied from [notificationTokenCollectionRef].
  const NotificationTokenCollectionRefFamily();

  /// 通知FCMトークンコレクションの参照
  ///
  /// Copied from [notificationTokenCollectionRef].
  NotificationTokenCollectionRefProvider call({required String userId}) {
    return NotificationTokenCollectionRefProvider(userId: userId);
  }

  @override
  NotificationTokenCollectionRefProvider getProviderOverride(
    covariant NotificationTokenCollectionRefProvider provider,
  ) {
    return call(userId: provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'notificationTokenCollectionRefProvider';
}

/// 通知FCMトークンコレクションの参照
///
/// Copied from [notificationTokenCollectionRef].
class NotificationTokenCollectionRefProvider
    extends
        AutoDisposeProvider<
          CollectionReference<FirestoreNotificationTokenModel>
        > {
  /// 通知FCMトークンコレクションの参照
  ///
  /// Copied from [notificationTokenCollectionRef].
  NotificationTokenCollectionRefProvider({required String userId})
    : this._internal(
        (ref) => notificationTokenCollectionRef(
          ref as NotificationTokenCollectionRefRef,
          userId: userId,
        ),
        from: notificationTokenCollectionRefProvider,
        name: r'notificationTokenCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$notificationTokenCollectionRefHash,
        dependencies: NotificationTokenCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            NotificationTokenCollectionRefFamily._allTransitiveDependencies,
        userId: userId,
      );

  NotificationTokenCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreNotificationTokenModel> Function(
      NotificationTokenCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NotificationTokenCollectionRefProvider._internal(
        (ref) => create(ref as NotificationTokenCollectionRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<
    CollectionReference<FirestoreNotificationTokenModel>
  >
  createElement() {
    return _NotificationTokenCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationTokenCollectionRefProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NotificationTokenCollectionRefRef
    on
        AutoDisposeProviderRef<
          CollectionReference<FirestoreNotificationTokenModel>
        > {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _NotificationTokenCollectionRefProviderElement
    extends
        AutoDisposeProviderElement<
          CollectionReference<FirestoreNotificationTokenModel>
        >
    with NotificationTokenCollectionRefRef {
  _NotificationTokenCollectionRefProviderElement(super.provider);

  @override
  String get userId =>
      (origin as NotificationTokenCollectionRefProvider).userId;
}

String _$notificationTokenDocumentRefHash() =>
    r'baabc9e00325872694a06f7f40be3042ba904049';

/// 通知FCMトークンドキュメントの参照
///
/// Copied from [notificationTokenDocumentRef].
@ProviderFor(notificationTokenDocumentRef)
const notificationTokenDocumentRefProvider =
    NotificationTokenDocumentRefFamily();

/// 通知FCMトークンドキュメントの参照
///
/// Copied from [notificationTokenDocumentRef].
class NotificationTokenDocumentRefFamily
    extends Family<DocumentReference<FirestoreNotificationTokenModel>> {
  /// 通知FCMトークンドキュメントの参照
  ///
  /// Copied from [notificationTokenDocumentRef].
  const NotificationTokenDocumentRefFamily();

  /// 通知FCMトークンドキュメントの参照
  ///
  /// Copied from [notificationTokenDocumentRef].
  NotificationTokenDocumentRefProvider call({
    required String userId,
    String? token,
  }) {
    return NotificationTokenDocumentRefProvider(userId: userId, token: token);
  }

  @override
  NotificationTokenDocumentRefProvider getProviderOverride(
    covariant NotificationTokenDocumentRefProvider provider,
  ) {
    return call(userId: provider.userId, token: provider.token);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'notificationTokenDocumentRefProvider';
}

/// 通知FCMトークンドキュメントの参照
///
/// Copied from [notificationTokenDocumentRef].
class NotificationTokenDocumentRefProvider
    extends
        AutoDisposeProvider<
          DocumentReference<FirestoreNotificationTokenModel>
        > {
  /// 通知FCMトークンドキュメントの参照
  ///
  /// Copied from [notificationTokenDocumentRef].
  NotificationTokenDocumentRefProvider({required String userId, String? token})
    : this._internal(
        (ref) => notificationTokenDocumentRef(
          ref as NotificationTokenDocumentRefRef,
          userId: userId,
          token: token,
        ),
        from: notificationTokenDocumentRefProvider,
        name: r'notificationTokenDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$notificationTokenDocumentRefHash,
        dependencies: NotificationTokenDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            NotificationTokenDocumentRefFamily._allTransitiveDependencies,
        userId: userId,
        token: token,
      );

  NotificationTokenDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.token,
  }) : super.internal();

  final String userId;
  final String? token;

  @override
  Override overrideWith(
    DocumentReference<FirestoreNotificationTokenModel> Function(
      NotificationTokenDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NotificationTokenDocumentRefProvider._internal(
        (ref) => create(ref as NotificationTokenDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreNotificationTokenModel>>
  createElement() {
    return _NotificationTokenDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationTokenDocumentRefProvider &&
        other.userId == userId &&
        other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NotificationTokenDocumentRefRef
    on
        AutoDisposeProviderRef<
          DocumentReference<FirestoreNotificationTokenModel>
        > {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `token` of this provider.
  String? get token;
}

class _NotificationTokenDocumentRefProviderElement
    extends
        AutoDisposeProviderElement<
          DocumentReference<FirestoreNotificationTokenModel>
        >
    with NotificationTokenDocumentRefRef {
  _NotificationTokenDocumentRefProviderElement(super.provider);

  @override
  String get userId => (origin as NotificationTokenDocumentRefProvider).userId;
  @override
  String? get token => (origin as NotificationTokenDocumentRefProvider).token;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
