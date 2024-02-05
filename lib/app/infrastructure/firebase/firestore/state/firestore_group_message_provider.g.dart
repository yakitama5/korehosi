// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_group_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupMessageCollectionRefHash() =>
    r'e361677548cd00d41e947501d9e88069fe907621';

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
/// Copied from [groupMessageCollectionRef].
@ProviderFor(groupMessageCollectionRef)
const groupMessageCollectionRefProvider = GroupMessageCollectionRefFamily();

/// 通知メッセージコレクションの参照
///
/// Copied from [groupMessageCollectionRef].
class GroupMessageCollectionRefFamily
    extends Family<CollectionReference<FirestoreGroupMessageModel>> {
  /// 通知メッセージコレクションの参照
  ///
  /// Copied from [groupMessageCollectionRef].
  const GroupMessageCollectionRefFamily();

  /// 通知メッセージコレクションの参照
  ///
  /// Copied from [groupMessageCollectionRef].
  GroupMessageCollectionRefProvider call({
    required String groupId,
  }) {
    return GroupMessageCollectionRefProvider(
      groupId: groupId,
    );
  }

  @override
  GroupMessageCollectionRefProvider getProviderOverride(
    covariant GroupMessageCollectionRefProvider provider,
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
  String? get name => r'groupMessageCollectionRefProvider';
}

/// 通知メッセージコレクションの参照
///
/// Copied from [groupMessageCollectionRef].
class GroupMessageCollectionRefProvider extends AutoDisposeProvider<
    CollectionReference<FirestoreGroupMessageModel>> {
  /// 通知メッセージコレクションの参照
  ///
  /// Copied from [groupMessageCollectionRef].
  GroupMessageCollectionRefProvider({
    required String groupId,
  }) : this._internal(
          (ref) => groupMessageCollectionRef(
            ref as GroupMessageCollectionRefRef,
            groupId: groupId,
          ),
          from: groupMessageCollectionRefProvider,
          name: r'groupMessageCollectionRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupMessageCollectionRefHash,
          dependencies: GroupMessageCollectionRefFamily._dependencies,
          allTransitiveDependencies:
              GroupMessageCollectionRefFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  GroupMessageCollectionRefProvider._internal(
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
    CollectionReference<FirestoreGroupMessageModel> Function(
            GroupMessageCollectionRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GroupMessageCollectionRefProvider._internal(
        (ref) => create(ref as GroupMessageCollectionRefRef),
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
  AutoDisposeProviderElement<CollectionReference<FirestoreGroupMessageModel>>
      createElement() {
    return _GroupMessageCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupMessageCollectionRefProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroupMessageCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreGroupMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _GroupMessageCollectionRefProviderElement
    extends AutoDisposeProviderElement<
        CollectionReference<FirestoreGroupMessageModel>>
    with GroupMessageCollectionRefRef {
  _GroupMessageCollectionRefProviderElement(super.provider);

  @override
  String get groupId => (origin as GroupMessageCollectionRefProvider).groupId;
}

String _$groupMessageDocumentRefHash() =>
    r'6f8d0fd01702182325b50ca1cd94f2d3453f5847';

/// 通知メッセージドキュメントの参照
///
/// Copied from [groupMessageDocumentRef].
@ProviderFor(groupMessageDocumentRef)
const groupMessageDocumentRefProvider = GroupMessageDocumentRefFamily();

/// 通知メッセージドキュメントの参照
///
/// Copied from [groupMessageDocumentRef].
class GroupMessageDocumentRefFamily
    extends Family<DocumentReference<FirestoreGroupMessageModel>> {
  /// 通知メッセージドキュメントの参照
  ///
  /// Copied from [groupMessageDocumentRef].
  const GroupMessageDocumentRefFamily();

  /// 通知メッセージドキュメントの参照
  ///
  /// Copied from [groupMessageDocumentRef].
  GroupMessageDocumentRefProvider call({
    required String groupId,
    String? notificationMessageId,
  }) {
    return GroupMessageDocumentRefProvider(
      groupId: groupId,
      notificationMessageId: notificationMessageId,
    );
  }

  @override
  GroupMessageDocumentRefProvider getProviderOverride(
    covariant GroupMessageDocumentRefProvider provider,
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
  String? get name => r'groupMessageDocumentRefProvider';
}

/// 通知メッセージドキュメントの参照
///
/// Copied from [groupMessageDocumentRef].
class GroupMessageDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreGroupMessageModel>> {
  /// 通知メッセージドキュメントの参照
  ///
  /// Copied from [groupMessageDocumentRef].
  GroupMessageDocumentRefProvider({
    required String groupId,
    String? notificationMessageId,
  }) : this._internal(
          (ref) => groupMessageDocumentRef(
            ref as GroupMessageDocumentRefRef,
            groupId: groupId,
            notificationMessageId: notificationMessageId,
          ),
          from: groupMessageDocumentRefProvider,
          name: r'groupMessageDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupMessageDocumentRefHash,
          dependencies: GroupMessageDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              GroupMessageDocumentRefFamily._allTransitiveDependencies,
          groupId: groupId,
          notificationMessageId: notificationMessageId,
        );

  GroupMessageDocumentRefProvider._internal(
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
    DocumentReference<FirestoreGroupMessageModel> Function(
            GroupMessageDocumentRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GroupMessageDocumentRefProvider._internal(
        (ref) => create(ref as GroupMessageDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestoreGroupMessageModel>>
      createElement() {
    return _GroupMessageDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupMessageDocumentRefProvider &&
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

mixin GroupMessageDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreGroupMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `notificationMessageId` of this provider.
  String? get notificationMessageId;
}

class _GroupMessageDocumentRefProviderElement
    extends AutoDisposeProviderElement<
        DocumentReference<FirestoreGroupMessageModel>>
    with GroupMessageDocumentRefRef {
  _GroupMessageDocumentRefProviderElement(super.provider);

  @override
  String get groupId => (origin as GroupMessageDocumentRefProvider).groupId;
  @override
  String? get notificationMessageId =>
      (origin as GroupMessageDocumentRefProvider).notificationMessageId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
