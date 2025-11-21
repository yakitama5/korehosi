// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'search_items_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ほしい物の一覧

@ProviderFor(searchItems)
const searchItemsProvider = SearchItemsFamily._();

/// ほしい物の一覧

final class SearchItemsProvider
    extends
        $FunctionalProvider<
          AsyncValue<PageInfo<Item>>,
          PageInfo<Item>,
          FutureOr<PageInfo<Item>>
        >
    with $FutureModifier<PageInfo<Item>>, $FutureProvider<PageInfo<Item>> {
  /// ほしい物の一覧
  const SearchItemsProvider._({
    required SearchItemsFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'searchItemsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchItemsHash();

  @override
  String toString() {
    return r'searchItemsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PageInfo<Item>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PageInfo<Item>> create(Ref ref) {
    final argument = this.argument as int;
    return searchItems(ref, page: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchItemsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchItemsHash() => r'824173ad11f72aeccc06f6be3abf907af205d7d8';

/// ほしい物の一覧

final class SearchItemsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PageInfo<Item>>, int> {
  const SearchItemsFamily._()
    : super(
        retry: null,
        name: r'searchItemsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// ほしい物の一覧

  SearchItemsProvider call({required int page}) =>
      SearchItemsProvider._(argument: page, from: this);

  @override
  String toString() => r'searchItemsProvider';
}
