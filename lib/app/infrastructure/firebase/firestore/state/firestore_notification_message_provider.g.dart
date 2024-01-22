// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_notification_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationMessageCollectionRefHash() =>
    r'6a1495330cfe3a581ce0f5e4d136d11d0166d3c6';

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

/// 通知メッセージコレクションの参照
///
/// Copied from [notificationMessageCollectionRef].
@ProviderFor(notificationMessageCollectionRef)
const notificationMessageCollectionRefProvider =
    NotificationMessageCollectionRefFamily();

/// 通知メッセージコレクションの参照
///
/// Copied from [notificationMessageCollectionRef].
class NotificationMessageCollectionRefFamily
    extends Family<CollectionReference<FirestoreNotificationMessageModel>> {
  /// 通知メッセージコレクションの参照
  ///
  /// Copied from [notificationMessageCollectionRef].
  const NotificationMessageCollectionRefFamily();

  /// 通知メッセージコレクションの参照
  ///
  /// Copied from [notificationMessageCollectionRef].
  NotificationMessageCollectionRefProvider call({
    required String groupId,
  }) {
    return NotificationMessageCollectionRefProvider(
      groupId: groupId,
    );
  }

  @override
  NotificationMessageCollectionRefProvider getProviderOverride(
    covariant NotificationMessageCollectionRefProvider provider,
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
  String? get name => r'notificationMessageCollectionRefProvider';
}

/// 通知メッセージコレクションの参照
///
/// Copied from [notificationMessageCollectionRef].
class NotificationMessageCollectionRefProvider extends AutoDisposeProvider<
    CollectionReference<FirestoreNotificationMessageModel>> {
  /// 通知メッセージコレクションの参照
  ///
  /// Copied from [notificationMessageCollectionRef].
  NotificationMessageCollectionRefProvider({
    required String groupId,
  }) : this._internal(
          (ref) => notificationMessageCollectionRef(
            ref as NotificationMessageCollectionRefRef,
            groupId: groupId,
          ),
          from: notificationMessageCollectionRefProvider,
          name: r'notificationMessageCollectionRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationMessageCollectionRefHash,
          dependencies: NotificationMessageCollectionRefFamily._dependencies,
          allTransitiveDependencies:
              NotificationMessageCollectionRefFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  NotificationMessageCollectionRefProvider._internal(
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
    CollectionReference<FirestoreNotificationMessageModel> Function(
            NotificationMessageCollectionRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NotificationMessageCollectionRefProvider._internal(
        (ref) => create(ref as NotificationMessageCollectionRefRef),
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
      CollectionReference<FirestoreNotificationMessageModel>> createElement() {
    return _NotificationMessageCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationMessageCollectionRefProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationMessageCollectionRefRef on AutoDisposeProviderRef<
    CollectionReference<FirestoreNotificationMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _NotificationMessageCollectionRefProviderElement
    extends AutoDisposeProviderElement<
        CollectionReference<FirestoreNotificationMessageModel>>
    with NotificationMessageCollectionRefRef {
  _NotificationMessageCollectionRefProviderElement(super.provider);

  @override
  String get groupId =>
      (origin as NotificationMessageCollectionRefProvider).groupId;
}

String _$notificationMessageDocumentRefHash() =>
    r'8f8a02d924940b3d01163283c61f9050f8ddd162';

/// 通知メッセージドキュメントの参照
///
/// Copied from [notificationMessageDocumentRef].
@ProviderFor(notificationMessageDocumentRef)
const notificationMessageDocumentRefProvider =
    NotificationMessageDocumentRefFamily();

/// 通知メッセージドキュメントの参照
///
/// Copied from [notificationMessageDocumentRef].
class NotificationMessageDocumentRefFamily
    extends Family<DocumentReference<FirestoreNotificationMessageModel>> {
  /// 通知メッセージドキュメントの参照
  ///
  /// Copied from [notificationMessageDocumentRef].
  const NotificationMessageDocumentRefFamily();

  /// 通知メッセージドキュメントの参照
  ///
  /// Copied from [notificationMessageDocumentRef].
  NotificationMessageDocumentRefProvider call({
    required String groupId,
    String? notificationMessageId,
  }) {
    return NotificationMessageDocumentRefProvider(
      groupId: groupId,
      notificationMessageId: notificationMessageId,
    );
  }

  @override
  NotificationMessageDocumentRefProvider getProviderOverride(
    covariant NotificationMessageDocumentRefProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
      notificationMessageId: provider.notificationMessageId,
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
  String? get name => r'notificationMessageDocumentRefProvider';
}

/// 通知メッセージドキュメントの参照
///
/// Copied from [notificationMessageDocumentRef].
class NotificationMessageDocumentRefProvider extends AutoDisposeProvider<
    DocumentReference<FirestoreNotificationMessageModel>> {
  /// 通知メッセージドキュメントの参照
  ///
  /// Copied from [notificationMessageDocumentRef].
  NotificationMessageDocumentRefProvider({
    required String groupId,
    String? notificationMessageId,
  }) : this._internal(
          (ref) => notificationMessageDocumentRef(
            ref as NotificationMessageDocumentRefRef,
            groupId: groupId,
            notificationMessageId: notificationMessageId,
          ),
          from: notificationMessageDocumentRefProvider,
          name: r'notificationMessageDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationMessageDocumentRefHash,
          dependencies: NotificationMessageDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              NotificationMessageDocumentRefFamily._allTransitiveDependencies,
          groupId: groupId,
          notificationMessageId: notificationMessageId,
        );

  NotificationMessageDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.notificationMessageId,
  }) : super.internal();

  final String groupId;
  final String? notificationMessageId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreNotificationMessageModel> Function(
            NotificationMessageDocumentRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NotificationMessageDocumentRefProvider._internal(
        (ref) => create(ref as NotificationMessageDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        notificationMessageId: notificationMessageId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<
      DocumentReference<FirestoreNotificationMessageModel>> createElement() {
    return _NotificationMessageDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationMessageDocumentRefProvider &&
        other.groupId == groupId &&
        other.notificationMessageId == notificationMessageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, notificationMessageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationMessageDocumentRefRef on AutoDisposeProviderRef<
    DocumentReference<FirestoreNotificationMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `notificationMessageId` of this provider.
  String? get notificationMessageId;
}

class _NotificationMessageDocumentRefProviderElement
    extends AutoDisposeProviderElement<
        DocumentReference<FirestoreNotificationMessageModel>>
    with NotificationMessageDocumentRefRef {
  _NotificationMessageDocumentRefProviderElement(super.provider);

  @override
  String get groupId =>
      (origin as NotificationMessageDocumentRefProvider).groupId;
  @override
  String? get notificationMessageId =>
      (origin as NotificationMessageDocumentRefProvider).notificationMessageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
