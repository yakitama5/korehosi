// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 現在のグループ内の欲しい物

@ProviderFor(item)
const itemProvider = ItemFamily._();

/// 現在のグループ内の欲しい物

final class ItemProvider
    extends $FunctionalProvider<AsyncValue<Item?>, Item?, FutureOr<Item?>>
    with $FutureModifier<Item?>, $FutureProvider<Item?> {
  /// 現在のグループ内の欲しい物
  const ItemProvider._({
    required ItemFamily super.from,
    required ItemId super.argument,
  }) : super(
         retry: null,
         name: r'itemProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$itemHash();

  @override
  String toString() {
    return r'itemProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Item?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Item?> create(Ref ref) {
    final argument = this.argument as ItemId;
    return item(ref, itemId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itemHash() => r'c6f6939f0dc3a0a7d4e6cd6f5734c42e43950bde';

/// 現在のグループ内の欲しい物

final class ItemFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Item?>, ItemId> {
  const ItemFamily._()
    : super(
        retry: null,
        name: r'itemProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 現在のグループ内の欲しい物

  ItemProvider call({required ItemId itemId}) =>
      ItemProvider._(argument: itemId, from: this);

  @override
  String toString() => r'itemProvider';
}
