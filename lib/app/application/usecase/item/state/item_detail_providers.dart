import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/item/entity/item.dart';
import '../../../../domain/purchase/entity/purchase.dart';
import '../../../config/purchase_config.dart';
import '../../../extension/number_extension.dart';
import '../../purchase/state/current_group_age_applicable_purchase_provider.dart';
import 'current_group_item_provider.dart';

part 'item_detail_providers.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 欲しい物の明細を管理するProvider
///
/// 明細画面郡で横断して利用する状態を管理する<br/>
/// ID項目などをバケツリレーする運用を避けるため、`overrideWithValue`を用いて状態を引き継ぐ
class ItemDetailProviders {
  static final itemIdProvider = _itemIdProvider;
  static final itemProvider = _itemProvider;
  static final purchaseProvider = _purchaseProvider;
  static final purchaseFormProvider = _purchaseFormProvider;
}

/// 明細画面の欲しい物ID
/// 新規 or 更新の判定に利用するため、IDだけを切り出し
@riverpod
String? _itemId(_ItemIdRef ref) =>
    // 画面遷移時に `override` することを前提に利用
    throw UnimplementedError();

/// 明細画面の欲しい物
@Riverpod(dependencies: [_itemId])
Future<Item?> _item(_ItemRef ref) async {
  final itemId = ref.watch(_itemIdProvider);
  if (itemId == null) {
    return null;
  }
  return ref.watch(currentGroupItemProvider(itemId: itemId).future);
}

/// 明細画面の購入情報
@Riverpod(dependencies: [_itemId])
Future<Purchase?> _purchase(_PurchaseRef ref) async {
  final itemId = ref.watch(_itemIdProvider);
  if (itemId == null) {
    return null;
  }

  return ref
      .watch(currentGroupAgeApplicablePurchaseProvider(itemId: itemId).future);
}

/// 購入情報の入力フォーム
@Riverpod(dependencies: [_purchase])
class _PurchaseForm extends _$PurchaseForm {
  @override
  FutureOr<FormGroup> build() async {
    final initial = await ref.read(_purchaseProvider.future);

    return FormGroup(
      {
        // 金額はカンマ表示を行うためにStringとして定義 (データは数値型)
        purchaseConfig.priceKey:
            FormControl<String>(value: initial?.price?.formatComma()),
        purchaseConfig.planDataKey:
            FormControl<DateTime>(value: initial?.planDate),
        purchaseConfig.buyerNameKey:
            FormControl<String>(value: initial?.buyerName),
        purchaseConfig.surpriseKey: FormControl<bool>(
          value: initial?.surprise ?? purchaseConfig.initialSurprise,
        ),
        purchaseConfig.sentAtKey: FormControl<DateTime>(value: initial?.sentAt),
        purchaseConfig.memoKey: FormControl<String>(value: initial?.memo),
      },
    );
  }
}
