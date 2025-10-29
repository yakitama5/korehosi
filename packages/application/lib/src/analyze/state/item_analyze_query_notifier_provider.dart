import 'package:packages_domain/analyze.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_analyze_query_notifier_provider.g.dart';

@riverpod
class ItemAnalyzeQueryNotifier extends _$ItemAnalyzeQueryNotifier {
  @override
  ItemAnalyzeQuery build() => const ItemAnalyzeQuery();

  ItemAnalyzeQuery copyWith({String? wanterName, String? buyerName}) =>
      state.copyWith(
        wanterName: wanterName ?? state.wanterName,
        buyerName: buyerName ?? state.buyerName,
      );
}
