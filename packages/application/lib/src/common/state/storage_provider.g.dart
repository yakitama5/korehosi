// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageUrlHash() => r'e419219f9f528016fae4c8413d0d1f48a2fd0558';

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

/// 画像URL
///
/// Copied from [imageUrl].
@ProviderFor(imageUrl)
const imageUrlProvider = ImageUrlFamily();

/// 画像URL
///
/// Copied from [imageUrl].
class ImageUrlFamily extends Family<AsyncValue<String?>> {
  /// 画像URL
  ///
  /// Copied from [imageUrl].
  const ImageUrlFamily();

  /// 画像URL
  ///
  /// Copied from [imageUrl].
  ImageUrlProvider call(String? path) {
    return ImageUrlProvider(path);
  }

  @override
  ImageUrlProvider getProviderOverride(covariant ImageUrlProvider provider) {
    return call(provider.path);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageUrlProvider';
}

/// 画像URL
///
/// Copied from [imageUrl].
class ImageUrlProvider extends FutureProvider<String?> {
  /// 画像URL
  ///
  /// Copied from [imageUrl].
  ImageUrlProvider(String? path)
    : this._internal(
        (ref) => imageUrl(ref as ImageUrlRef, path),
        from: imageUrlProvider,
        name: r'imageUrlProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$imageUrlHash,
        dependencies: ImageUrlFamily._dependencies,
        allTransitiveDependencies: ImageUrlFamily._allTransitiveDependencies,
        path: path,
      );

  ImageUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
  }) : super.internal();

  final String? path;

  @override
  Override overrideWith(
    FutureOr<String?> Function(ImageUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageUrlProvider._internal(
        (ref) => create(ref as ImageUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
      ),
    );
  }

  @override
  FutureProviderElement<String?> createElement() {
    return _ImageUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageUrlProvider && other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ImageUrlRef on FutureProviderRef<String?> {
  /// The parameter `path` of this provider.
  String? get path;
}

class _ImageUrlProviderElement extends FutureProviderElement<String?>
    with ImageUrlRef {
  _ImageUrlProviderElement(super.provider);

  @override
  String? get path => (origin as ImageUrlProvider).path;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
