import 'dart:async';

import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_view_layout_notifier_provider.g.dart';

@riverpod
class ItemsViewLayoutNotifier extends _$ItemsViewLayoutNotifier {
  UserSessionRepository get _repository =>
      ref.watch(userSessionRepositoryProvider);

  @override
  ViewLayout build() {
    // 未設定の場合に備えて初期値を設定
    return _repository.fetchItemsPageViewLayout() ?? ViewLayout.list;
  }

  Future<void> updateViewLayout({required ViewLayout viewLayout}) async {
    // 先に結果を返す
    state = viewLayout;

    // 非同期で処理を保存する
    unawaited(_repository.updateItemsPageViewLayout(viewLayout: viewLayout));
  }
}
