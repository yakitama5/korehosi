// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_share_link_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shareLinkCollectionRefHash() =>
    r'c50d417657fe0e8b4701cc25daa3d4bc07bb7f80';

/// グループ共有リンクコレクションの参照
///
/// Copied from [shareLinkCollectionRef].
@ProviderFor(shareLinkCollectionRef)
final shareLinkCollectionRefProvider =
    AutoDisposeProvider<CollectionReference<FirestoreShareLinkModel>>.internal(
  shareLinkCollectionRef,
  name: r'shareLinkCollectionRefProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$shareLinkCollectionRefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ShareLinkCollectionRefRef
    = AutoDisposeProviderRef<CollectionReference<FirestoreShareLinkModel>>;
String _$shareLinkDocumentRefHash() =>
    r'c3fbd7d74b1a1651f7e7b2be76a8f4bb1c05dc80';

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

/// グループ共有リンクドキュメントの参照
///
/// Copied from [shareLinkDocumentRef].
@ProviderFor(shareLinkDocumentRef)
const shareLinkDocumentRefProvider = ShareLinkDocumentRefFamily();

/// グループ共有リンクドキュメントの参照
///
/// Copied from [shareLinkDocumentRef].
class ShareLinkDocumentRefFamily
    extends Family<DocumentReference<FirestoreShareLinkModel>> {
  /// グループ共有リンクドキュメントの参照
  ///
  /// Copied from [shareLinkDocumentRef].
  const ShareLinkDocumentRefFamily();

  /// グループ共有リンクドキュメントの参照
  ///
  /// Copied from [shareLinkDocumentRef].
  ShareLinkDocumentRefProvider call({
    String? shareLinkId,
  }) {
    return ShareLinkDocumentRefProvider(
      shareLinkId: shareLinkId,
    );
  }

  @override
  ShareLinkDocumentRefProvider getProviderOverride(
    covariant ShareLinkDocumentRefProvider provider,
  ) {
    return call(
      shareLinkId: provider.shareLinkId,
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
  String? get name => r'shareLinkDocumentRefProvider';
}

/// グループ共有リンクドキュメントの参照
///
/// Copied from [shareLinkDocumentRef].
class ShareLinkDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreShareLinkModel>> {
  /// グループ共有リンクドキュメントの参照
  ///
  /// Copied from [shareLinkDocumentRef].
  ShareLinkDocumentRefProvider({
    String? shareLinkId,
  }) : this._internal(
          (ref) => shareLinkDocumentRef(
            ref as ShareLinkDocumentRefRef,
            shareLinkId: shareLinkId,
          ),
          from: shareLinkDocumentRefProvider,
          name: r'shareLinkDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$shareLinkDocumentRefHash,
          dependencies: ShareLinkDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              ShareLinkDocumentRefFamily._allTransitiveDependencies,
          shareLinkId: shareLinkId,
        );

  ShareLinkDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.shareLinkId,
  }) : super.internal();

  final String? shareLinkId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreShareLinkModel> Function(
            ShareLinkDocumentRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ShareLinkDocumentRefProvider._internal(
        (ref) => create(ref as ShareLinkDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        shareLinkId: shareLinkId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreShareLinkModel>>
      createElement() {
    return _ShareLinkDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ShareLinkDocumentRefProvider &&
        other.shareLinkId == shareLinkId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, shareLinkId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ShareLinkDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreShareLinkModel>> {
  /// The parameter `shareLinkId` of this provider.
  String? get shareLinkId;
}

class _ShareLinkDocumentRefProviderElement extends AutoDisposeProviderElement<
    DocumentReference<FirestoreShareLinkModel>> with ShareLinkDocumentRefRef {
  _ShareLinkDocumentRefProviderElement(super.provider);

  @override
  String? get shareLinkId =>
      (origin as ShareLinkDocumentRefProvider).shareLinkId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
