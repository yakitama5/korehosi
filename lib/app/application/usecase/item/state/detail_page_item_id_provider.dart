import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_page_item_id_provider.g.dart';

/// 明細画面の欲しい物ID
/// 新規 or 更新の判定に利用するため、IDだけを切り出し
@riverpod
String? detailPageItemId(DetailPageItemIdRef ref) =>
    // 画面遷移時に `override` することを前提に利用
    throw UnimplementedError();
