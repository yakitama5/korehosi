// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_participant_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$participantCollectionRefHash() =>
    r'96d30390a45d92058efd5cfdab3b18a47dd918ae';

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

/// グループ参加者コレクションの参照
///
/// Copied from [participantCollectionRef].
@ProviderFor(participantCollectionRef)
const participantCollectionRefProvider = ParticipantCollectionRefFamily();

/// グループ参加者コレクションの参照
///
/// Copied from [participantCollectionRef].
class ParticipantCollectionRefFamily
    extends Family<CollectionReference<FirestoreUserModel>> {
  /// グループ参加者コレクションの参照
  ///
  /// Copied from [participantCollectionRef].
  const ParticipantCollectionRefFamily();

  /// グループ参加者コレクションの参照
  ///
  /// Copied from [participantCollectionRef].
  ParticipantCollectionRefProvider call({required GroupId groupId}) {
    return ParticipantCollectionRefProvider(groupId: groupId);
  }

  @override
  ParticipantCollectionRefProvider getProviderOverride(
    covariant ParticipantCollectionRefProvider provider,
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
  String? get name => r'participantCollectionRefProvider';
}

/// グループ参加者コレクションの参照
///
/// Copied from [participantCollectionRef].
class ParticipantCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestoreUserModel>> {
  /// グループ参加者コレクションの参照
  ///
  /// Copied from [participantCollectionRef].
  ParticipantCollectionRefProvider({required GroupId groupId})
    : this._internal(
        (ref) => participantCollectionRef(
          ref as ParticipantCollectionRefRef,
          groupId: groupId,
        ),
        from: participantCollectionRefProvider,
        name: r'participantCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$participantCollectionRefHash,
        dependencies: ParticipantCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            ParticipantCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  ParticipantCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final GroupId groupId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreUserModel> Function(
      ParticipantCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ParticipantCollectionRefProvider._internal(
        (ref) => create(ref as ParticipantCollectionRefRef),
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
  AutoDisposeProviderElement<CollectionReference<FirestoreUserModel>>
  createElement() {
    return _ParticipantCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ParticipantCollectionRefProvider &&
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
mixin ParticipantCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreUserModel>> {
  /// The parameter `groupId` of this provider.
  GroupId get groupId;
}

class _ParticipantCollectionRefProviderElement
    extends AutoDisposeProviderElement<CollectionReference<FirestoreUserModel>>
    with ParticipantCollectionRefRef {
  _ParticipantCollectionRefProviderElement(super.provider);

  @override
  GroupId get groupId => (origin as ParticipantCollectionRefProvider).groupId;
}

String _$participantDocumentRefHash() =>
    r'ecc1ff8e5d45b351b0ce28b70793000ce624cd3a';

/// グループ参加者ドキュメントの参照
///
/// Copied from [participantDocumentRef].
@ProviderFor(participantDocumentRef)
const participantDocumentRefProvider = ParticipantDocumentRefFamily();

/// グループ参加者ドキュメントの参照
///
/// Copied from [participantDocumentRef].
class ParticipantDocumentRefFamily
    extends Family<DocumentReference<FirestoreUserModel>> {
  /// グループ参加者ドキュメントの参照
  ///
  /// Copied from [participantDocumentRef].
  const ParticipantDocumentRefFamily();

  /// グループ参加者ドキュメントの参照
  ///
  /// Copied from [participantDocumentRef].
  ParticipantDocumentRefProvider call({
    required GroupId groupId,
    UserId? participantId,
  }) {
    return ParticipantDocumentRefProvider(
      groupId: groupId,
      participantId: participantId,
    );
  }

  @override
  ParticipantDocumentRefProvider getProviderOverride(
    covariant ParticipantDocumentRefProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
      participantId: provider.participantId,
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
  String? get name => r'participantDocumentRefProvider';
}

/// グループ参加者ドキュメントの参照
///
/// Copied from [participantDocumentRef].
class ParticipantDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreUserModel>> {
  /// グループ参加者ドキュメントの参照
  ///
  /// Copied from [participantDocumentRef].
  ParticipantDocumentRefProvider({
    required GroupId groupId,
    UserId? participantId,
  }) : this._internal(
         (ref) => participantDocumentRef(
           ref as ParticipantDocumentRefRef,
           groupId: groupId,
           participantId: participantId,
         ),
         from: participantDocumentRefProvider,
         name: r'participantDocumentRefProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$participantDocumentRefHash,
         dependencies: ParticipantDocumentRefFamily._dependencies,
         allTransitiveDependencies:
             ParticipantDocumentRefFamily._allTransitiveDependencies,
         groupId: groupId,
         participantId: participantId,
       );

  ParticipantDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.participantId,
  }) : super.internal();

  final GroupId groupId;
  final UserId? participantId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreUserModel> Function(
      ParticipantDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ParticipantDocumentRefProvider._internal(
        (ref) => create(ref as ParticipantDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        participantId: participantId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
  createElement() {
    return _ParticipantDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ParticipantDocumentRefProvider &&
        other.groupId == groupId &&
        other.participantId == participantId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, participantId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ParticipantDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreUserModel>> {
  /// The parameter `groupId` of this provider.
  GroupId get groupId;

  /// The parameter `participantId` of this provider.
  UserId? get participantId;
}

class _ParticipantDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
    with ParticipantDocumentRefRef {
  _ParticipantDocumentRefProviderElement(super.provider);

  @override
  GroupId get groupId => (origin as ParticipantDocumentRefProvider).groupId;
  @override
  UserId? get participantId =>
      (origin as ParticipantDocumentRefProvider).participantId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
