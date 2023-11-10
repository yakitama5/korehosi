// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_page_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemIdHash() => r'42a86b52949c2f92e6439e0241e4e7fee52d4438';

/// 明細画面の欲しい物ID
/// 新規 or 更新の判定に利用するため、IDだけを切り出し
///
/// Copied from [_itemId].
@ProviderFor(_itemId)
final _itemIdProvider = AutoDisposeProvider<String?>.internal(
  _itemId,
  name: r'_itemIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _ItemIdRef = AutoDisposeProviderRef<String?>;
String _$itemHash() => r'08b429d55ec789eada55275734667e0124bcec1c';

/// 明細画面の欲しい物
///
/// Copied from [_item].
@ProviderFor(_item)
final _itemProvider = AutoDisposeFutureProvider<Item?>.internal(
  _item,
  name: r'_itemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemHash,
  dependencies: <ProviderOrFamily>[_itemIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _itemIdProvider,
    ...?_itemIdProvider.allTransitiveDependencies
  },
);

typedef _ItemRef = AutoDisposeFutureProviderRef<Item?>;
String _$purchaseHash() => r'9c281248b302951779d25a55255ff4b983b6e03c';

/// 明細画面の購入情報
///
/// Copied from [_purchase].
@ProviderFor(_purchase)
final _purchaseProvider = AutoDisposeFutureProvider<Purchase?>.internal(
  _purchase,
  name: r'_purchaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$purchaseHash,
  dependencies: <ProviderOrFamily>[_itemIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _itemIdProvider,
    ...?_itemIdProvider.allTransitiveDependencies
  },
);

typedef _PurchaseRef = AutoDisposeFutureProviderRef<Purchase?>;
String _$itemFormHash() => r'7842e1ca13c3d1451db6c589eadf1cbcadf5fcc5';

/// 欲しい物の入力フォーム
///
/// Copied from [_ItemForm].
@ProviderFor(_ItemForm)
final _itemFormProvider =
    AutoDisposeAsyncNotifierProvider<_ItemForm, FormGroup>.internal(
  _ItemForm.new,
  name: r'_itemFormProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemFormHash,
  dependencies: <ProviderOrFamily>[_itemProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _itemProvider,
    ...?_itemProvider.allTransitiveDependencies
  },
);

typedef _$ItemForm = AutoDisposeAsyncNotifier<FormGroup>;
String _$formArrayKeysHash() => r'771698bea2682c650b8f8c0b4a04bd532b58769a';

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

abstract class _$FormArrayKeys
    extends BuildlessAutoDisposeNotifier<List<String>> {
  late final String formArrayKey;

  List<String> build({
    required String formArrayKey,
  });
}

/// 共通のFormArrayのキーを管理するNotifier
///
/// Copied from [_FormArrayKeys].
@ProviderFor(_FormArrayKeys)
const _formArrayKeysProvider = _FormArrayKeysFamily();

/// 共通のFormArrayのキーを管理するNotifier
///
/// Copied from [_FormArrayKeys].
class _FormArrayKeysFamily extends Family<List<String>> {
  /// 共通のFormArrayのキーを管理するNotifier
  ///
  /// Copied from [_FormArrayKeys].
  const _FormArrayKeysFamily();

  /// 共通のFormArrayのキーを管理するNotifier
  ///
  /// Copied from [_FormArrayKeys].
  _FormArrayKeysProvider call({
    required String formArrayKey,
  }) {
    return _FormArrayKeysProvider(
      formArrayKey: formArrayKey,
    );
  }

  @override
  _FormArrayKeysProvider getProviderOverride(
    covariant _FormArrayKeysProvider provider,
  ) {
    return call(
      formArrayKey: provider.formArrayKey,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    _itemFormProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    _itemFormProvider,
    ...?_itemFormProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_formArrayKeysProvider';
}

/// 共通のFormArrayのキーを管理するNotifier
///
/// Copied from [_FormArrayKeys].
class _FormArrayKeysProvider
    extends AutoDisposeNotifierProviderImpl<_FormArrayKeys, List<String>> {
  /// 共通のFormArrayのキーを管理するNotifier
  ///
  /// Copied from [_FormArrayKeys].
  _FormArrayKeysProvider({
    required String formArrayKey,
  }) : this._internal(
          () => _FormArrayKeys()..formArrayKey = formArrayKey,
          from: _formArrayKeysProvider,
          name: r'_formArrayKeysProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formArrayKeysHash,
          dependencies: _FormArrayKeysFamily._dependencies,
          allTransitiveDependencies:
              _FormArrayKeysFamily._allTransitiveDependencies,
          formArrayKey: formArrayKey,
        );

  _FormArrayKeysProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formArrayKey,
  }) : super.internal();

  final String formArrayKey;

  @override
  List<String> runNotifierBuild(
    covariant _FormArrayKeys notifier,
  ) {
    return notifier.build(
      formArrayKey: formArrayKey,
    );
  }

  @override
  Override overrideWith(_FormArrayKeys Function() create) {
    return ProviderOverride(
      origin: this,
      override: _FormArrayKeysProvider._internal(
        () => create()..formArrayKey = formArrayKey,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        formArrayKey: formArrayKey,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<_FormArrayKeys, List<String>>
      createElement() {
    return _FormArrayKeysProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _FormArrayKeysProvider &&
        other.formArrayKey == formArrayKey;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formArrayKey.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _FormArrayKeysRef on AutoDisposeNotifierProviderRef<List<String>> {
  /// The parameter `formArrayKey` of this provider.
  String get formArrayKey;
}

class _FormArrayKeysProviderElement
    extends AutoDisposeNotifierProviderElement<_FormArrayKeys, List<String>>
    with _FormArrayKeysRef {
  _FormArrayKeysProviderElement(super.provider);

  @override
  String get formArrayKey => (origin as _FormArrayKeysProvider).formArrayKey;
}

String _$imageKeysHash() => r'a76d04576c95960718185cee2eea5c34dcd01468';

/// 画像のコントロールキー
///
/// Copied from [_ImageKeys].
@ProviderFor(_ImageKeys)
final _imageKeysProvider =
    AutoDisposeNotifierProvider<_ImageKeys, List<String>>.internal(
  _ImageKeys.new,
  name: r'_imageKeysProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$imageKeysHash,
  dependencies: <ProviderOrFamily>[_formArrayKeysProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _formArrayKeysProvider,
    ...?_formArrayKeysProvider.allTransitiveDependencies
  },
);

typedef _$ImageKeys = AutoDisposeNotifier<List<String>>;
String _$urlKeysHash() => r'e19b21e7a8ecc5b03c898f950766923e39149519';

/// URLのコントロールキー
///
/// Copied from [_UrlKeys].
@ProviderFor(_UrlKeys)
final _urlKeysProvider =
    AutoDisposeNotifierProvider<_UrlKeys, List<String>>.internal(
  _UrlKeys.new,
  name: r'_urlKeysProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$urlKeysHash,
  dependencies: <ProviderOrFamily>[_formArrayKeysProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _formArrayKeysProvider,
    ...?_formArrayKeysProvider.allTransitiveDependencies
  },
);

typedef _$UrlKeys = AutoDisposeNotifier<List<String>>;
String _$purchaseFormHash() => r'8ceead9b8573bcd03c59bb2f2fde80e1548b5b3f';

/// See also [_PurchaseForm].
@ProviderFor(_PurchaseForm)
final _purchaseFormProvider =
    AutoDisposeAsyncNotifierProvider<_PurchaseForm, FormGroup>.internal(
  _PurchaseForm.new,
  name: r'_purchaseFormProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$purchaseFormHash,
  dependencies: <ProviderOrFamily>[_purchaseProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _purchaseProvider,
    ...?_purchaseProvider.allTransitiveDependencies
  },
);

typedef _$PurchaseForm = AutoDisposeAsyncNotifier<FormGroup>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
