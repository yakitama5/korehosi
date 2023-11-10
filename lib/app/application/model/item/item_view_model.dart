import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_view_model.freezed.dart';

@freezed
class ItemViewModel with _$ItemViewModel {
  const factory ItemViewModel({
    required String id,
  }) = _ItemViewModel;
}
