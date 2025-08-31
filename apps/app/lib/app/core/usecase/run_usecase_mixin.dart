import 'package:riverpod/riverpod.dart';

import '../state/app_loading_provider.dart';

/// ユースケース実行のためのメソッドを備えた Mixin
mixin RunUsecaseMixin {
  /// 実行中にローディング表示する
  /// ローディング表示を行わない場合は、`disableLoading`を指定する
  Future<T> execute<T>(
    Ref ref, {
    // ignore: defined_async_value_getter_type
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
