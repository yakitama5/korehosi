// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_deleted_group_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dgroupMessageCollectionRefHash() =>
    r'4a7836c3de8bc165d96d3551572c37321f96d62d';

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
/// Copied from [dgroupMessageCollectionRef].
@ProviderFor(dgroupMessageCollectionRef)
const dgroupMessageCollectionRefProvider = DgroupMessageCollectionRefFamily();

/// 削除済通知メッセージコレクションの参照
///
/// Copied from [dgroupMessageCollectionRef].
class DgroupMessageCollectionRefFamily
    extends Family<CollectionReference<FirestoreGroupMessageModel>> {
  /// 削除済通知メッセージコレクションの参照
  ///
  /// Copied from [dgroupMessageCollectionRef].
  const DgroupMessageCollectionRefFamily();

  /// 削除済通知メッセージコレクションの参照
  ///
  /// Copied from [dgroupMessageCollectionRef].
  DgroupMessageCollectionRefProvider call({required String groupId}) {
    return DgroupMessageCollectionRefProvider(groupId: groupId);
  }

  @override
  DgroupMessageCollectionRefProvider getProviderOverride(
    covariant DgroupMessageCollectionRefProvider provider,
  ) {
    return call(groupId: provider.groupId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dgroupMessageCollectionRefProvider';
}

/// 削除済通知メッセージコレクションの参照
///
/// Copied from [dgroupMessageCollectionRef].
class DgroupMessageCollectionRefProvider
    extends
        AutoDisposeProvider<CollectionReference<FirestoreGroupMessageModel>> {
  /// 削除済通知メッセージコレクションの参照
  ///
  /// Copied from [dgroupMessageCollectionRef].
  DgroupMessageCollectionRefProvider({required String groupId})
    : this._internal(
        (ref) => dgroupMessageCollectionRef(
          ref as DgroupMessageCollectionRefRef,
          groupId: groupId,
        ),
        from: dgroupMessageCollectionRefProvider,
        name: r'dgroupMessageCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dgroupMessageCollectionRefHash,
        dependencies: DgroupMessageCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            DgroupMessageCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  DgroupMessageCollectionRefProvider._internal(
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
      DgroupMessageCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DgroupMessageCollectionRefProvider._internal(
        (ref) => create(ref as DgroupMessageCollectionRefRef),
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
    return _DgroupMessageCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DgroupMessageCollectionRefProvider &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DgroupMessageCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreGroupMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _DgroupMessageCollectionRefProviderElement
    extends
        AutoDisposeProviderElement<
          CollectionReference<FirestoreGroupMessageModel>
        >
    with DgroupMessageCollectionRefRef {
  _DgroupMessageCollectionRefProviderElement(super.provider);

  @override
  String get groupId => (origin as DgroupMessageCollectionRefProvider).groupId;
}

String _$dgroupMessageDocumentRefHash() =>
    r'80976af009830b4e51651bb520da017c9d7d2079';

/// 削除済通知メッセージドキュメントの参照
///
/// Copied from [dgroupMessageDocumentRef].
@ProviderFor(dgroupMessageDocumentRef)
const dgroupMessageDocumentRefProvider = DgroupMessageDocumentRefFamily();

/// 削除済通知メッセージドキュメントの参照
///
/// Copied from [dgroupMessageDocumentRef].
class DgroupMessageDocumentRefFamily
    extends Family<DocumentReference<FirestoreGroupMessageModel>> {
  /// 削除済通知メッセージドキュメントの参照
  ///
  /// Copied from [dgroupMessageDocumentRef].
  const DgroupMessageDocumentRefFamily();

  /// 削除済通知メッセージドキュメントの参照
  ///
  /// Copied from [dgroupMessageDocumentRef].
  DgroupMessageDocumentRefProvider call({
    required String groupId,
    String? dnotificationMessageId,
  }) {
    return DgroupMessageDocumentRefProvider(
      groupId: groupId,
      dnotificationMessageId: dnotificationMessageId,
    );
  }

  @override
  DgroupMessageDocumentRefProvider getProviderOverride(
    covariant DgroupMessageDocumentRefProvider provider,
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
  String? get name => r'dgroupMessageDocumentRefProvider';
}

/// 削除済通知メッセージドキュメントの参照
///
/// Copied from [dgroupMessageDocumentRef].
class DgroupMessageDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreGroupMessageModel>> {
  /// 削除済通知メッセージドキュメントの参照
  ///
  /// Copied from [dgroupMessageDocumentRef].
  DgroupMessageDocumentRefProvider({
    required String groupId,
    String? dnotificationMessageId,
  }) : this._internal(
         (ref) => dgroupMessageDocumentRef(
           ref as DgroupMessageDocumentRefRef,
           groupId: groupId,
           dnotificationMessageId: dnotificationMessageId,
         ),
         from: dgroupMessageDocumentRefProvider,
         name: r'dgroupMessageDocumentRefProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$dgroupMessageDocumentRefHash,
         dependencies: DgroupMessageDocumentRefFamily._dependencies,
         allTransitiveDependencies:
             DgroupMessageDocumentRefFamily._allTransitiveDependencies,
         groupId: groupId,
         dnotificationMessageId: dnotificationMessageId,
       );

  DgroupMessageDocumentRefProvider._internal(
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
    DocumentReference<FirestoreGroupMessageModel> Function(
      DgroupMessageDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DgroupMessageDocumentRefProvider._internal(
        (ref) => create(ref as DgroupMessageDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestoreGroupMessageModel>>
  createElement() {
    return _DgroupMessageDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DgroupMessageDocumentRefProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DgroupMessageDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreGroupMessageModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `dnotificationMessageId` of this provider.
  String? get dnotificationMessageId;
}

class _DgroupMessageDocumentRefProviderElement
    extends
        AutoDisposeProviderElement<
          DocumentReference<FirestoreGroupMessageModel>
        >
    with DgroupMessageDocumentRefRef {
  _DgroupMessageDocumentRefProviderElement(super.provider);

  @override
  String get groupId => (origin as DgroupMessageDocumentRefProvider).groupId;
  @override
  String? get dnotificationMessageId =>
      (origin as DgroupMessageDocumentRefProvider).dnotificationMessageId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
