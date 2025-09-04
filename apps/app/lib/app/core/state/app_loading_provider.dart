import 'package:packages_core/util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_loading_provider.g.dart';

/// アプリ全体で共通するローディング表示を管理
@riverpod
class LoadingNotifier extends _$LoadingNotifier {
  int _count = 0;

  @override
  bool build() {
    return false;
  }

  Future<T> wrap<T>(Future<T> future) async {
    _present();
    try {
      return await future;
    } on Exception catch (e) {
      logger.e(e.toString());
      rethrow;
    } finally {
      _dismiss();
    }
  }

  void show() {
    state = true;
  }

  void hide() {
    state = false;
  }

  void _present() {
    _count = _count + 1;
    state = true;
  }

  void _dismiss() {
    _count = _count - 1;
    if (_count == 0) {
      state = false;
    }
  }
}
