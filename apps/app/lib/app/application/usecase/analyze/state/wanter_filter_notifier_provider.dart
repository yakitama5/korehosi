import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wanter_filter_notifier_provider.g.dart';

/// 欲しい人の名前フィルタの値
@riverpod
class WanterFilterNotifier extends _$WanterFilterNotifier {
  @override
  String? build() => null;

  // ignore: use_setters_to_change_properties
  void update(String name) {
    state = name;
  }

  void reset() {
    state = null;
  }
}
