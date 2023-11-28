import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyer_filter_notifier_provider.g.dart';

/// 購入した人の名前フィルタの値
@riverpod
class BuyerFilterNotifier extends _$BuyerFilterNotifier {
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
