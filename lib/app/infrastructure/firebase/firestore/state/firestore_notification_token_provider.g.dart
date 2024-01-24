// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_notification_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationTokenCollectionRefHash() =>
    r'c3b2d31824db852bd7a600057b3216a603ead917';

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
  NotificationTokenCollectionRefProvider call({
    required String groupId,
  }) {
    return NotificationTokenCollectionRefProvider(
      groupId: groupId,
    );
  }

  @override
  NotificationTokenCollectionRefProvider getProviderOverride(
    covariant NotificationTokenCollectionRefProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
    );
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
class NotificationTokenCollectionRefProvider extends AutoDisposeProvider<
    CollectionReference<FirestoreNotificationTokenModel>> {
  /// 通知FCMトークンコレクションの参照
  ///
  /// Copied from [notificationTokenCollectionRef].
  NotificationTokenCollectionRefProvider({
    required String groupId,
  }) : this._internal(
          (ref) => notificationTokenCollectionRef(
            ref as NotificationTokenCollectionRefRef,
            groupId: groupId,
          ),
          from: notificationTokenCollectionRefProvider,
          name: r'notificationTokenCollectionRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationTokenCollectionRefHash,
          dependencies: NotificationTokenCollectionRefFamily._dependencies,
          allTransitiveDependencies:
              NotificationTokenCollectionRefFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  NotificationTokenCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final String groupId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreNotificationTokenModel> Function(
            NotificationTokenCollectionRefRef provider)
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
        groupId: groupId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<
      CollectionReference<FirestoreNotificationTokenModel>> createElement() {
    return _NotificationTokenCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationTokenCollectionRefProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationTokenCollectionRefRef on AutoDisposeProviderRef<
    CollectionReference<FirestoreNotificationTokenModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _NotificationTokenCollectionRefProviderElement
    extends AutoDisposeProviderElement<
        CollectionReference<FirestoreNotificationTokenModel>>
    with NotificationTokenCollectionRefRef {
  _NotificationTokenCollectionRefProviderElement(super.provider);

  @override
  String get groupId =>
      (origin as NotificationTokenCollectionRefProvider).groupId;
}

String _$notificationTokenDocumentRefHash() =>
    r'73fb7939b795df3e11f54ab5182d85099cc43e27';

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
    required String groupId,
    String? notificationTokenId,
  }) {
    return NotificationTokenDocumentRefProvider(
      groupId: groupId,
      notificationTokenId: notificationTokenId,
    );
  }

  @override
  NotificationTokenDocumentRefProvider getProviderOverride(
    covariant NotificationTokenDocumentRefProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
      notificationTokenId: provider.notificationTokenId,
    );
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
class NotificationTokenDocumentRefProvider extends AutoDisposeProvider<
    DocumentReference<FirestoreNotificationTokenModel>> {
  /// 通知FCMトークンドキュメントの参照
  ///
  /// Copied from [notificationTokenDocumentRef].
  NotificationTokenDocumentRefProvider({
    required String groupId,
    String? notificationTokenId,
  }) : this._internal(
          (ref) => notificationTokenDocumentRef(
            ref as NotificationTokenDocumentRefRef,
            groupId: groupId,
            notificationTokenId: notificationTokenId,
          ),
          from: notificationTokenDocumentRefProvider,
          name: r'notificationTokenDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationTokenDocumentRefHash,
          dependencies: NotificationTokenDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              NotificationTokenDocumentRefFamily._allTransitiveDependencies,
          groupId: groupId,
          notificationTokenId: notificationTokenId,
        );

  NotificationTokenDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.notificationTokenId,
  }) : super.internal();

  final String groupId;
  final String? notificationTokenId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreNotificationTokenModel> Function(
            NotificationTokenDocumentRefRef provider)
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
        groupId: groupId,
        notificationTokenId: notificationTokenId,
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
        other.groupId == groupId &&
        other.notificationTokenId == notificationTokenId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, notificationTokenId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationTokenDocumentRefRef on AutoDisposeProviderRef<
    DocumentReference<FirestoreNotificationTokenModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `notificationTokenId` of this provider.
  String? get notificationTokenId;
}

class _NotificationTokenDocumentRefProviderElement
    extends AutoDisposeProviderElement<
        DocumentReference<FirestoreNotificationTokenModel>>
    with NotificationTokenDocumentRefRef {
  _NotificationTokenDocumentRefProviderElement(super.provider);

  @override
  String get groupId =>
      (origin as NotificationTokenDocumentRefProvider).groupId;
  @override
  String? get notificationTokenId =>
      (origin as NotificationTokenDocumentRefProvider).notificationTokenId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
