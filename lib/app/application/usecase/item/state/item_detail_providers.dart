import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../domain/item/entity/item.dart';
import '../../../../domain/purchase/entity/purchase.dart';
import '../../../config/item_config.dart';
import '../../../config/purchase_config.dart';
import '../../../extension/number_extension.dart';
import '../../../model/form_control_with_key.dart';
import '../../../model/item/selected_image_model.dart';
import '../../../validator/url_validator.dart';
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
  static final itemFormProvider = _itemFormProvider;
  static final imageKeysProvider = _imageKeysProvider;
  static final urlKeysProvider = _urlKeysProvider;
  static final purchaseFormProvider = _purchaseFormProvider;
}

const _uuid = Uuid();

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

/// 欲しい物の入力フォーム
@Riverpod(dependencies: [_item])
class _ItemForm extends _$ItemForm {
  @override
  FutureOr<FormGroup> build() async {
    // 初期値として静止点を取得する
    final initial = await ref.read(_itemProvider.future);

    // 画像は追加アップロードを考慮して N+1 のフィールドを用意
    final imagesPath = [
      ...initial?.imagesPath ?? [],
      null,
    ];

    // URLは追加ボタンを押せばいいだけなので N のフィールドを用意
    final urls = [
      ...initial?.urls ?? [],
      // 登録済で0件の場合、空の要素を追加する
      if (initial?.urls == null || initial?.urls?.isEmpty == true) null,
    ];

    // Form定義 (初期値設定も合わせて行う)
    return FormGroup({
      itemConfig.nameKey: FormControl<String>(
        value: initial?.name,
        validators: [Validators.required],
      ),
      itemConfig.wanterNameKey: FormControl<String>(value: initial?.wanterName),
      itemConfig.wishRankKey: FormControl<double>(
        value: initial?.wishRank ?? itemConfig.initialWishRank,
      ),
      itemConfig.wishSeasonKey: FormControl<String>(value: initial?.wishSeason),

      itemConfig.memoKey: FormControl<String>(value: initial?.memo),

      // 動的なフィールドはUUIDを用いてフィールドキーを生成する
      itemConfig.urlsKey: FormArray<String>(
        urls
            .map(
              (url) => FormControlWithKey<String>(
                value: url,
                key: _uuid.v4(),
                validators: [const UrlValidator()],
              ),
            )
            .toList(),
      ),
      itemConfig.imagesKey: FormArray<SelectedImageModel>(
        imagesPath
            .map(
              (path) => FormControlWithKey<SelectedImageModel>(
                value:
                    path != null ? SelectedImageModel(imagePath: path) : null,
                key: _uuid.v4(),
                validators: [const UrlValidator()],
              ),
            )
            .toList(),
      ),
    });
  }
}

/// 共通のFormArrayのキーを管理するNotifier
@Riverpod(dependencies: [_ItemForm])
class _FormArrayKeys extends _$FormArrayKeys {
  _FormArrayKeys();

  @override
  List<String> build({required String formArrayKey}) {
    final form = ref.watch(_itemFormProvider).value;
    final formArray = form?.control(formArrayKey) as FormArray?;
    return formArray?.controls
            .map(
              (element) => (element as FormControlWithKey).key,
            )
            .toList() ??
        [];
  }

  void add<T>(FormControl<T> formControl) {
    // コントロールの追加
    final form = ref.watch(_itemFormProvider).value;
    final formArray = form?.control(formArrayKey) as FormArray?;
    formArray?.add(formControl);

    // 変更を反映
    state = formArray?.controls
            .map(
              (element) => (element as FormControlWithKey).key,
            )
            .toList() ??
        [];
  }

  void remove(int index) {
    // Controlの削除
    final form = ref.watch(_itemFormProvider).value;
    final formArray = form?.control(formArrayKey) as FormArray?;

    // フォームの数が最小数以下の場合は何もしない
    if (formArray == null || formArray.controls.length <= 1) {
      return;
    }

    // 削除後に、状態管理用のProviderに反映 (FormGroupは状態を変更しないため)
    formArray.removeAt(index);

    // 変更を反映
    state = formArray.controls
        .map(
          (element) => (element as FormControlWithKey).key,
        )
        .toList();
  }
}

/// 画像のコントロールキー
@Riverpod(dependencies: [_FormArrayKeys])
class _ImageKeys extends _$ImageKeys {
  @override
  List<String> build() =>
      ref.read(_formArrayKeysProvider(formArrayKey: itemConfig.imagesKey));

  void add() {
    // コントロールの追加
    const uuid = Uuid();
    final newControl = FormControlWithKey<SelectedImageModel>(key: uuid.v4());
    ref
        .read(
          _formArrayKeysProvider(formArrayKey: itemConfig.imagesKey).notifier,
        )
        .add(newControl);

    // 状態の反映
    state =
        ref.read(_formArrayKeysProvider(formArrayKey: itemConfig.imagesKey));
  }

  void remove(int index) {
    // 削除
    ref
        .read(
          _formArrayKeysProvider(formArrayKey: itemConfig.imagesKey).notifier,
        )
        .remove(index);

    // 状態の反映
    state =
        ref.read(_formArrayKeysProvider(formArrayKey: itemConfig.imagesKey));
  }
}

/// URLのコントロールキー
@Riverpod(dependencies: [_FormArrayKeys])
class _UrlKeys extends _$UrlKeys {
  @override
  List<String> build() =>
      ref.read(_formArrayKeysProvider(formArrayKey: itemConfig.urlsKey));

  void add() {
    // コントロールの追加
    const uuid = Uuid();
    final newControl = FormControlWithKey<String>(
      key: uuid.v4(),
      validators: [const UrlValidator()],
    );
    ref
        .read(
          _formArrayKeysProvider(formArrayKey: itemConfig.urlsKey).notifier,
        )
        .add(newControl);

    // 状態の反映
    state = ref.read(_formArrayKeysProvider(formArrayKey: itemConfig.urlsKey));
  }
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
