import 'package:packages_application/common.dart';
import 'package:riverpod/riverpod.dart';

/// ユースケース実行のためのメソッドを備えた Mixin
mixin RunUsecaseMixin {
  /// 実行中にローディング表示する
  /// ローディング表示を行わない場合は、`disableLoading`を指定する
  Future<T> execute<T>(
    Ref ref, {
    required Future<T> Function() action,
    bool disableLoading = false,
  }) {
    // ローディング表示を行わない
    if (disableLoading) {
      return action.call();
    }

    final loading = ref.read(loadingProvider.notifier);
    return loading.wrap<T>(action.call());
  }
}
