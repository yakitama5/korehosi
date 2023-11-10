import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../state/loading_provider.dart';

/// ユースケース実行のためのメソッドを備えた Mixin
///
/// 実行中に[`OverlayLoading`]を表示するためにloadingControllerを更新する
/// ローディング表示を別の箇所に任せたい場合（ie.FutureProvider)はnullにする
mixin RunUsecaseMixin {
  Future<T> execute<T>(
    Ref ref, {
    required Future<T> Function() action,
    bool disableLoading = false,
  }) async {
    // ローディング表示を行わない
    if (disableLoading) {
      return action.call();
    }

    final loading = ref.read(loadingNotifierProvider.notifier);
    return loading.wrap<T>(action.call());
  }
}
