// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_deleted_notification_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dnotificationMessageCollectionRefHash() =>
    r'73762a938cd81b531fa26daa4b99417aba091ec7';

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

/// 削除済通知メッセージコレクションの参照
///
/// Copied from [dnotificationMessageCollectionRef].
@ProviderFor(dnotificationMessageCollectionRef)
const dnotificationMessageCollectionRefProvider =
    DnotificationMessageCollectionRefFamily();

/// 削除済通知メッセージコレクションの参照
///
/// Copied from [dnotificationMessageCollectionRef].
class DnotificationMessageCollectionRefFamily
    extends Family<CollectionReference<FirestoreNotificationMessageModel>> {
  /// 削除済通知メッセージコレクションの参照
  ///
  /// Copied from [dnotificationMessageCollectionRef].
  const DnotificationMessageCollectionRefFamily();

  /// 削除済通知メッセージコレクションの参照
  ///
  /// Copied from [dnotificationMessageCollectionRef].
  DnotificationMessageCollectionRefProvider call({
    required String groupId,
  }) {
    return DnotificationMessageCollectionRefProvider(
      groupId: groupId,
    );
  }

  @override
  DnotificationMessageCollectionRefProvider getProviderOverride(
    covariant DnotificationMessageCollectionRefProvider provider,
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
  String? get name => r'dnotificationMessageCollectionRefProvider';
}

/// 削除済通知メッセージコレクションの参照
///
/// Copied from [dnotificationMessageCollectionRef].
class DnotificationMessageCollectionRefProvider extends AutoDisposeProvider<
    CollectionReference<FirestoreNotificationMessageModel>> {
  /// 削除済通知メッセージコレクションの参照
  ///
  /// Copied from [dnotificationMessageCollectionRef].
  DnotificationMessageCollectionRefProvider({
    required String groupId,
  }) : this._internal(
          (ref) => dnotificationMessageCollectionRef(
            ref as DnotificationMessageCollectionRefRef,
            groupId: groupId,
          ),
          from: dnotificationMessageCollectionRefProvider,
          name: r'dnotificationMessageCollectionRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dnotificationMessageCollectionRefHash,
          dependencies: DnotificationMessageCollectionRefFamily._dependencies,
          allTransitiveDependencies: DnotificationMessageCollectionRefFamily
              ._allTransitiveDependencies,
          groupId: groupId,
        );

  DnotificationMessageCollectionRefProvider._internal(
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
            DnotificationMessageCollectionRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DnotificationMessageCollectionRefProvider._internal(
        (ref) => create(ref as DnotificationMessageCollectionRefRef),
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
    return _DnotificationMessageCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DnotificationMessageCollectionRefProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DnotificationMessageCollectionRefRef on AutoDisposeProviderRef<
    CollectionReference<FirestoreNotificationMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _DnotificationMessageCollectionRefProviderElement
    extends AutoDisposeProviderElement<
        CollectionReference<FirestoreNotificationMessageModel>>
    with DnotificationMessageCollectionRefRef {
  _DnotificationMessageCollectionRefProviderElement(super.provider);

  @override
  String get groupId =>
      (origin as DnotificationMessageCollectionRefProvider).groupId;
}

String _$dnotificationMessageDocumentRefHash() =>
    r'e2bdabc439015d6265e68f612bf3a74929e03f48';

/// 削除済通知メッセージドキュメントの参照
///
/// Copied from [dnotificationMessageDocumentRef].
@ProviderFor(dnotificationMessageDocumentRef)
const dnotificationMessageDocumentRefProvider =
    DnotificationMessageDocumentRefFamily();

/// 削除済通知メッセージドキュメントの参照
///
/// Copied from [dnotificationMessageDocumentRef].
class DnotificationMessageDocumentRefFamily
    extends Family<DocumentReference<FirestoreNotificationMessageModel>> {
  /// 削除済通知メッセージドキュメントの参照
  ///
  /// Copied from [dnotificationMessageDocumentRef].
  const DnotificationMessageDocumentRefFamily();

  /// 削除済通知メッセージドキュメントの参照
  ///
  /// Copied from [dnotificationMessageDocumentRef].
  DnotificationMessageDocumentRefProvider call({
    required String groupId,
    String? dnotificationMessageId,
  }) {
    return DnotificationMessageDocumentRefProvider(
      groupId: groupId,
      dnotificationMessageId: dnotificationMessageId,
    );
  }

  @override
  DnotificationMessageDocumentRefProvider getProviderOverride(
    covariant DnotificationMessageDocumentRefProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
      dnotificationMessageId: provider.dnotificationMessageId,
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
  String? get name => r'dnotificationMessageDocumentRefProvider';
}

/// 削除済通知メッセージドキュメントの参照
///
/// Copied from [dnotificationMessageDocumentRef].
class DnotificationMessageDocumentRefProvider extends AutoDisposeProvider<
    DocumentReference<FirestoreNotificationMessageModel>> {
  /// 削除済通知メッセージドキュメントの参照
  ///
  /// Copied from [dnotificationMessageDocumentRef].
  DnotificationMessageDocumentRefProvider({
    required String groupId,
    String? dnotificationMessageId,
  }) : this._internal(
          (ref) => dnotificationMessageDocumentRef(
            ref as DnotificationMessageDocumentRefRef,
            groupId: groupId,
            dnotificationMessageId: dnotificationMessageId,
          ),
          from: dnotificationMessageDocumentRefProvider,
          name: r'dnotificationMessageDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dnotificationMessageDocumentRefHash,
          dependencies: DnotificationMessageDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              DnotificationMessageDocumentRefFamily._allTransitiveDependencies,
          groupId: groupId,
          dnotificationMessageId: dnotificationMessageId,
        );

  DnotificationMessageDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.dnotificationMessageId,
  }) : super.internal();

  final String groupId;
  final String? dnotificationMessageId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreNotificationMessageModel> Function(
            DnotificationMessageDocumentRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DnotificationMessageDocumentRefProvider._internal(
        (ref) => create(ref as DnotificationMessageDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        dnotificationMessageId: dnotificationMessageId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<
      DocumentReference<FirestoreNotificationMessageModel>> createElement() {
    return _DnotificationMessageDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DnotificationMessageDocumentRefProvider &&
        other.groupId == groupId &&
        other.dnotificationMessageId == dnotificationMessageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, dnotificationMessageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DnotificationMessageDocumentRefRef on AutoDisposeProviderRef<
    DocumentReference<FirestoreNotificationMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `dnotificationMessageId` of this provider.
  String? get dnotificationMessageId;
}

class _DnotificationMessageDocumentRefProviderElement
    extends AutoDisposeProviderElement<
        DocumentReference<FirestoreNotificationMessageModel>>
    with DnotificationMessageDocumentRefRef {
  _DnotificationMessageDocumentRefProviderElement(super.provider);

  @override
  String get groupId =>
      (origin as DnotificationMessageDocumentRefProvider).groupId;
  @override
  String? get dnotificationMessageId =>
      (origin as DnotificationMessageDocumentRefProvider)
          .dnotificationMessageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
