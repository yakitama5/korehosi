// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'share_link_page_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 共有リンク画面の共有リンクID

@ProviderFor(detailPageShareLinkId)
const _shareLinkIdProvider = DetailPageShareLinkIdProvider._();

/// 共有リンク画面の共有リンクID

final class DetailPageShareLinkIdProvider
    extends $FunctionalProvider<ShareLinkId, ShareLinkId, ShareLinkId>
    with $Provider<ShareLinkId> {
  /// 共有リンク画面の共有リンクID
  const DetailPageShareLinkIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_shareLinkIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$detailPageShareLinkIdHash();

  @$internal
  @override
  $ProviderElement<ShareLinkId> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ShareLinkId create(Ref ref) {
    return detailPageShareLinkId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShareLinkId value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShareLinkId>(value),
    );
  }
}

String _$detailPageShareLinkIdHash() =>
    r'59e257756709aab23f889a67af387eb738d5c074';
