import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_analyze_query.freezed.dart';

/// ほしいものの分析用クエリ
@freezed
abstract class ItemAnalyzeQuery with _$ItemAnalyzeQuery {
  const factory ItemAnalyzeQuery({String? wanterName, String? buyerName}) =
      _ItemAnalyzeQuery;
}
