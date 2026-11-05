///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element

class Translations with BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final i18n = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       _meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.ja,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    _meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ja>.
  final TranslationMetadata<AppLocale, Translations> _meta;
  @override
  TranslationMetadata<AppLocale, Translations> get $meta => _meta;

  /// Access flat map
  dynamic operator [](String key) => _meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => Translations(meta: meta ?? this.$meta);

  // Translations
  late final Translations$common$ja common = Translations$common$ja.internal(
    _root,
  );
  late final Translations$designsystem$ja designsystem =
      Translations$designsystem$ja.internal(_root);
  late final Translations$kEnum$ja kEnum = Translations$kEnum$ja.internal(
    _root,
  );
  late final Translations$exceptions$ja exceptions =
      Translations$exceptions$ja.internal(_root);
}

// Path: common
class Translations$common$ja {
  Translations$common$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: 'Yes'
  String get yes => 'Yes';

  /// ja: 'No'
  String get no => 'No';

  /// ja: '・'
  String get itemizedTextPrefix => '・';

  /// ja: '保存'
  String get save => '保存';

  /// ja: '削除'
  String get delete => '削除';

  /// ja: '削除しました。'
  String get deletionComplete => '削除しました。';

  /// ja: '編集'
  String get edit => '編集';

  /// ja: '<未設定>'
  String get unset => '<未設定>';

  /// ja: '*'
  String get requiredMark => '*';

  /// ja: '*必須項目'
  String get requiredHelper => '*必須項目';

  /// ja: '次へ'
  String get next => '次へ';

  /// ja: '戻る'
  String get back => '戻る';

  /// ja: '前へ'
  String get prev => '前へ';

  /// ja: 'スキップ'
  String get skip => 'スキップ';

  /// ja: 'OK'
  String get ok => 'OK';

  /// ja: 'キャンセル'
  String get cancel => 'キャンセル';

  /// ja: 'リセット'
  String get reset => 'リセット';

  /// ja: '適用'
  String get apply => '適用';

  /// ja: 'すべて'
  String get all => 'すべて';

  /// ja: '名無し'
  String get noName => '名無し';

  late final Translations$common$deleteConfirmDialog$ja deleteConfirmDialog =
      Translations$common$deleteConfirmDialog$ja.internal(_root);
}

// Path: designsystem
class Translations$designsystem$ja {
  Translations$designsystem$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final Translations$designsystem$imageSourceSelect$ja imageSourceSelect =
      Translations$designsystem$imageSourceSelect$ja.internal(_root);
  late final Translations$designsystem$confirmDiscardChanges$ja
  confirmDiscardChanges =
      Translations$designsystem$confirmDiscardChanges$ja.internal(_root);
  late final Translations$designsystem$permissionMessages$ja
  permissionMessages = Translations$designsystem$permissionMessages$ja.internal(
    _root,
  );
  late final Translations$designsystem$sendUrlErrorDialog$ja
  sendUrlErrorDialog = Translations$designsystem$sendUrlErrorDialog$ja.internal(
    _root,
  );
  late final Translations$designsystem$appUpdate$ja appUpdate =
      Translations$designsystem$appUpdate$ja.internal(_root);
  late final Translations$designsystem$validationError$ja validationError =
      Translations$designsystem$validationError$ja.internal(_root);
  late final Translations$designsystem$format$ja format =
      Translations$designsystem$format$ja.internal(_root);
}

// Path: kEnum
class Translations$kEnum$ja {
  Translations$kEnum$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '(system) {システム設定} (android) {Android} (ios) {iOS}'
  String uiStyle({required UIStyle context}) {
    switch (context) {
      case UIStyle.system:
        return 'システム設定';
      case UIStyle.android:
        return 'Android';
      case UIStyle.ios:
        return 'iOS';
    }
  }

  /// ja: '(appColor) {アプリ内カラー} (dynamicColor) {ダイナミックカラー} (blue) {ブルー} (purple) {パープル} (green) {グリーン} (red) {レッド} (pink) {ピンク} (yellow) {イエロー} (orange) {オレンジ}'
  String themeColor({required ThemeColor context}) {
    switch (context) {
      case ThemeColor.appColor:
        return 'アプリ内カラー';
      case ThemeColor.dynamicColor:
        return 'ダイナミックカラー';
      case ThemeColor.blue:
        return 'ブルー';
      case ThemeColor.purple:
        return 'パープル';
      case ThemeColor.green:
        return 'グリーン';
      case ThemeColor.red:
        return 'レッド';
      case ThemeColor.pink:
        return 'ピンク';
      case ThemeColor.yellow:
        return 'イエロー';
      case ThemeColor.orange:
        return 'オレンジ';
    }
  }

  /// ja: '(system) {システムテーマ} (light) {ライトテーマ} (dark) {ダークテーマ}'
  String themeMode({required ThemeMode context}) {
    switch (context) {
      case ThemeMode.system:
        return 'システムテーマ';
      case ThemeMode.light:
        return 'ライトテーマ';
      case ThemeMode.dark:
        return 'ダークテーマ';
    }
  }

  late final Translations$kEnum$viewLayout$ja viewLayout =
      Translations$kEnum$viewLayout$ja.internal(_root);

  /// ja: '(asc) {昇順} (desc) {降順}'
  String sortOrder({required SortOrder context}) {
    switch (context) {
      case SortOrder.asc:
        return '昇順';
      case SortOrder.desc:
        return '降順';
    }
  }

  /// ja: '(createdAt) {作成日時} (name) {名前} (wishRank) {欲しい度} (wishDate) {ほしい日}'
  String itemOrderKey({required ItemOrderKey context}) {
    switch (context) {
      case ItemOrderKey.createdAt:
        return '作成日時';
      case ItemOrderKey.name:
        return '名前';
      case ItemOrderKey.wishRank:
        return '欲しい度';
      case ItemOrderKey.wishDate:
        return 'ほしい日';
    }
  }

  /// ja: '(child) {こども} (adult) {おとな}'
  String ageGroup({required AgeGroup context}) {
    switch (context) {
      case AgeGroup.child:
        return 'こども';
      case AgeGroup.adult:
        return 'おとな';
    }
  }

  /// ja: '(notPurchased) {未購入} (purchasePlan) {購入予定} (purchased) {購入済}'
  String purchaseStatus({required PurchaseStatus context}) {
    switch (context) {
      case PurchaseStatus.notPurchased:
        return '未購入';
      case PurchaseStatus.purchasePlan:
        return '購入予定';
      case PurchaseStatus.purchased:
        return '購入済';
    }
  }
}

// Path: exceptions
class Translations$exceptions$ja {
  Translations$exceptions$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '(deleted) {削除済です。} (updateTargetNotFound) {保存に失敗しました、あらためて操作を行ってください。} (notSelectedGroup) {グループが選択されていません。 グループを選択してください。} (notAuth) {ログイン情報が取得できませんでした。 ログインし直して、再度実行して下さい。} (createDynamicLinkUnknown) {招待リンクの作成に失敗しました。} (joinGroupPolicyJoinedGroup) {すでに参加しています。} (joinGroupPolicyExpired) {招待リンクの有効期限が切れています。} (joinGroupPolicyNotAuth) {認証エラーが発生しました。} (joinGroupPolicyLimitOver) {グループの参加上限(5件)に達しました。} (joinGroupPolicyInvalidShareLink) {招待リンクが正しくありません。} (leaveGroupPolicyOwner) {グループの所有者は脱退できません。グループを削除してください。} (deleteUserPolicyGroupOwner) {所有しているグループがあるため退会できません。 グループ一覧で、所有しているグループを削除してからもう一度お試しください。} (registrationItemPolicyLimitOver) {登録数の上限に達しました。 購入済のものを削除するか、プレミアムプランに変更して下さい。} (signInPolicyLinkedAccount) {すでに連携済のアカウントです。} (googleSignInUnknown) {Google認証に失敗しました。} (appInPurchasePolicyPackageNotExist) {購入処理に失敗しました。} (appInPurchasePolicyPackageNotActive) {購入処理に失敗しました。}'
  String businessException({required BusinessExceptionType context}) {
    switch (context) {
      case BusinessExceptionType.deleted:
        return '削除済です。';
      case BusinessExceptionType.updateTargetNotFound:
        return '保存に失敗しました、あらためて操作を行ってください。';
      case BusinessExceptionType.notSelectedGroup:
        return 'グループが選択されていません。 グループを選択してください。';
      case BusinessExceptionType.notAuth:
        return 'ログイン情報が取得できませんでした。 ログインし直して、再度実行して下さい。';
      case BusinessExceptionType.createDynamicLinkUnknown:
        return '招待リンクの作成に失敗しました。';
      case BusinessExceptionType.joinGroupPolicyJoinedGroup:
        return 'すでに参加しています。';
      case BusinessExceptionType.joinGroupPolicyExpired:
        return '招待リンクの有効期限が切れています。';
      case BusinessExceptionType.joinGroupPolicyNotAuth:
        return '認証エラーが発生しました。';
      case BusinessExceptionType.joinGroupPolicyLimitOver:
        return 'グループの参加上限(5件)に達しました。';
      case BusinessExceptionType.joinGroupPolicyInvalidShareLink:
        return '招待リンクが正しくありません。';
      case BusinessExceptionType.leaveGroupPolicyOwner:
        return 'グループの所有者は脱退できません。グループを削除してください。';
      case BusinessExceptionType.deleteUserPolicyGroupOwner:
        return '所有しているグループがあるため退会できません。 グループ一覧で、所有しているグループを削除してからもう一度お試しください。';
      case BusinessExceptionType.registrationItemPolicyLimitOver:
        return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
      case BusinessExceptionType.signInPolicyLinkedAccount:
        return 'すでに連携済のアカウントです。';
      case BusinessExceptionType.googleSignInUnknown:
        return 'Google認証に失敗しました。';
      case BusinessExceptionType.appInPurchasePolicyPackageNotExist:
        return '購入処理に失敗しました。';
      case BusinessExceptionType.appInPurchasePolicyPackageNotActive:
        return '購入処理に失敗しました。';
    }
  }

  late final Translations$exceptions$errorMessage$ja errorMessage =
      Translations$exceptions$errorMessage$ja.internal(_root);
}

// Path: common.deleteConfirmDialog
class Translations$common$deleteConfirmDialog$ja {
  Translations$common$deleteConfirmDialog$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '削除の確認'
  String get title => '削除の確認';

  /// ja: '「${name:String}」を削除しますか？'
  String message({required String name}) => '「${name}」を削除しますか？';
}

// Path: designsystem.imageSourceSelect
class Translations$designsystem$imageSourceSelect$ja {
  Translations$designsystem$imageSourceSelect$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '写真を撮る'
  String get shoot => '写真を撮る';

  /// ja: 'ライブラリから画像を選択'
  String get chooseFromLibrary => 'ライブラリから画像を選択';
}

// Path: designsystem.confirmDiscardChanges
class Translations$designsystem$confirmDiscardChanges$ja {
  Translations$designsystem$confirmDiscardChanges$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '変更を破棄しますか？'
  String get title => '変更を破棄しますか？';

  /// ja: 'すべての変更は失われます'
  String get message => 'すべての変更は失われます';

  /// ja: '破棄'
  String get discard => '破棄';

  /// ja: '破棄しない'
  String get notDiscard => '破棄しない';
}

// Path: designsystem.permissionMessages
class Translations$designsystem$permissionMessages$ja {
  Translations$designsystem$permissionMessages$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: 'ギャラリーへのアクセス'
  String get photos => 'ギャラリーへのアクセス';

  /// ja: 'カメラへのアクセス'
  String get camera => 'カメラへのアクセス';

  /// ja: 'プッシュ通知'
  String get pushNotification => 'プッシュ通知';

  late final Translations$designsystem$permissionMessages$permissionLackDialog$ja
  permissionLackDialog =
      Translations$designsystem$permissionMessages$permissionLackDialog$ja.internal(
        _root,
      );
  late final Translations$designsystem$permissionMessages$permissionOffDialog$ja
  permissionOffDialog =
      Translations$designsystem$permissionMessages$permissionOffDialog$ja.internal(
        _root,
      );
}

// Path: designsystem.sendUrlErrorDialog
class Translations$designsystem$sendUrlErrorDialog$ja {
  Translations$designsystem$sendUrlErrorDialog$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: 'エラー'
  String get title => 'エラー';

  /// ja: 'URLを開けませんでした。 頻発する場合はお問い合わせ下さい。'
  String get message => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
}

// Path: designsystem.appUpdate
class Translations$designsystem$appUpdate$ja {
  Translations$designsystem$appUpdate$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final Translations$designsystem$appUpdate$updatePossible$ja
  updatePossible =
      Translations$designsystem$appUpdate$updatePossible$ja.internal(_root);
  late final Translations$designsystem$appUpdate$forceUpdate$ja forceUpdate =
      Translations$designsystem$appUpdate$forceUpdate$ja.internal(_root);

  /// ja: 'ストアを開く'
  String get navigateStore => 'ストアを開く';
}

// Path: designsystem.validationError
class Translations$designsystem$validationError$ja {
  Translations$designsystem$validationError$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '必須項目を入力して下さい'
  String get required => '必須項目を入力して下さい';

  /// ja: '正しいURL形式で入力して下さい'
  String get url => '正しいURL形式で入力して下さい';
}

// Path: designsystem.format
class Translations$designsystem$format$ja {
  Translations$designsystem$format$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '${percent:String}%'
  String percent({required String percent}) => '${percent}%';
}

// Path: kEnum.viewLayout
class Translations$kEnum$viewLayout$ja {
  Translations$kEnum$viewLayout$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '表示形式'
  String get name => '表示形式';

  /// ja: '(grid) {グリッド表示} (list) {リスト表示}'
  String typeName({required ViewLayout context}) {
    switch (context) {
      case ViewLayout.grid:
        return 'グリッド表示';
      case ViewLayout.list:
        return 'リスト表示';
    }
  }
}

// Path: exceptions.errorMessage
class Translations$exceptions$errorMessage$ja {
  Translations$exceptions$errorMessage$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '予期せぬエラーが発生しました。'
  String get unexpected => '予期せぬエラーが発生しました。';
}

// Path: designsystem.permissionMessages.permissionLackDialog
class Translations$designsystem$permissionMessages$permissionLackDialog$ja {
  Translations$designsystem$permissionMessages$permissionLackDialog$ja.internal(
    this._root,
  );

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '${permission:String}が許可されていません'
  String title({required String permission}) => '${permission}が許可されていません';

  /// ja: '設定アプリを開いて${permission:String}を許可してください'
  String message({required String permission}) =>
      '設定アプリを開いて${permission}を許可してください';

  /// ja: '設定アプリを開く'
  String get openSettings => '設定アプリを開く';
}

// Path: designsystem.permissionMessages.permissionOffDialog
class Translations$designsystem$permissionMessages$permissionOffDialog$ja {
  Translations$designsystem$permissionMessages$permissionOffDialog$ja.internal(
    this._root,
  );

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '${permission:String}をオフにしますか？'
  String title({required String permission}) => '${permission}をオフにしますか？';

  /// ja: '設定アプリを開いて${permission:String}をオフにしてください'
  String message({required String permission}) =>
      '設定アプリを開いて${permission}をオフにしてください';

  /// ja: '設定アプリを開く'
  String get openSettings => '設定アプリを開く';
}

// Path: designsystem.appUpdate.updatePossible
class Translations$designsystem$appUpdate$updatePossible$ja {
  Translations$designsystem$appUpdate$updatePossible$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？'
  String get message =>
      '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
}

// Path: designsystem.appUpdate.forceUpdate
class Translations$designsystem$appUpdate$forceUpdate$ja {
  Translations$designsystem$appUpdate$forceUpdate$ja.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations

  /// ja: 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。'
  String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'common.yes' => 'Yes',
      'common.no' => 'No',
      'common.itemizedTextPrefix' => '・',
      'common.save' => '保存',
      'common.delete' => '削除',
      'common.deletionComplete' => '削除しました。',
      'common.edit' => '編集',
      'common.unset' => '<未設定>',
      'common.requiredMark' => '*',
      'common.requiredHelper' => '*必須項目',
      'common.next' => '次へ',
      'common.back' => '戻る',
      'common.prev' => '前へ',
      'common.skip' => 'スキップ',
      'common.ok' => 'OK',
      'common.cancel' => 'キャンセル',
      'common.reset' => 'リセット',
      'common.apply' => '適用',
      'common.all' => 'すべて',
      'common.noName' => '名無し',
      'common.deleteConfirmDialog.title' => '削除の確認',
      'common.deleteConfirmDialog.message' => ({
        required String name,
      }) => '「${name}」を削除しますか？',
      'designsystem.imageSourceSelect.shoot' => '写真を撮る',
      'designsystem.imageSourceSelect.chooseFromLibrary' => 'ライブラリから画像を選択',
      'designsystem.confirmDiscardChanges.title' => '変更を破棄しますか？',
      'designsystem.confirmDiscardChanges.message' => 'すべての変更は失われます',
      'designsystem.confirmDiscardChanges.discard' => '破棄',
      'designsystem.confirmDiscardChanges.notDiscard' => '破棄しない',
      'designsystem.permissionMessages.photos' => 'ギャラリーへのアクセス',
      'designsystem.permissionMessages.camera' => 'カメラへのアクセス',
      'designsystem.permissionMessages.pushNotification' => 'プッシュ通知',
      'designsystem.permissionMessages.permissionLackDialog.title' => ({
        required String permission,
      }) => '${permission}が許可されていません',
      'designsystem.permissionMessages.permissionLackDialog.message' => ({
        required String permission,
      }) => '設定アプリを開いて${permission}を許可してください',
      'designsystem.permissionMessages.permissionLackDialog.openSettings' =>
        '設定アプリを開く',
      'designsystem.permissionMessages.permissionOffDialog.title' => ({
        required String permission,
      }) => '${permission}をオフにしますか？',
      'designsystem.permissionMessages.permissionOffDialog.message' => ({
        required String permission,
      }) => '設定アプリを開いて${permission}をオフにしてください',
      'designsystem.permissionMessages.permissionOffDialog.openSettings' =>
        '設定アプリを開く',
      'designsystem.sendUrlErrorDialog.title' => 'エラー',
      'designsystem.sendUrlErrorDialog.message' =>
        'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。',
      'designsystem.appUpdate.updatePossible.message' =>
        '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？',
      'designsystem.appUpdate.forceUpdate.message' =>
        'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。',
      'designsystem.appUpdate.navigateStore' => 'ストアを開く',
      'designsystem.validationError.required' => '必須項目を入力して下さい',
      'designsystem.validationError.url' => '正しいURL形式で入力して下さい',
      'designsystem.format.percent' => ({
        required String percent,
      }) => '${percent}%',
      'kEnum.uiStyle' => ({required UIStyle context}) {
        switch (context) {
          case UIStyle.system:
            return 'システム設定';
          case UIStyle.android:
            return 'Android';
          case UIStyle.ios:
            return 'iOS';
        }
      },
      'kEnum.themeColor' => ({required ThemeColor context}) {
        switch (context) {
          case ThemeColor.appColor:
            return 'アプリ内カラー';
          case ThemeColor.dynamicColor:
            return 'ダイナミックカラー';
          case ThemeColor.blue:
            return 'ブルー';
          case ThemeColor.purple:
            return 'パープル';
          case ThemeColor.green:
            return 'グリーン';
          case ThemeColor.red:
            return 'レッド';
          case ThemeColor.pink:
            return 'ピンク';
          case ThemeColor.yellow:
            return 'イエロー';
          case ThemeColor.orange:
            return 'オレンジ';
        }
      },
      'kEnum.themeMode' => ({required ThemeMode context}) {
        switch (context) {
          case ThemeMode.system:
            return 'システムテーマ';
          case ThemeMode.light:
            return 'ライトテーマ';
          case ThemeMode.dark:
            return 'ダークテーマ';
        }
      },
      'kEnum.viewLayout.name' => '表示形式',
      'kEnum.viewLayout.typeName' => ({required ViewLayout context}) {
        switch (context) {
          case ViewLayout.grid:
            return 'グリッド表示';
          case ViewLayout.list:
            return 'リスト表示';
        }
      },
      'kEnum.sortOrder' => ({required SortOrder context}) {
        switch (context) {
          case SortOrder.asc:
            return '昇順';
          case SortOrder.desc:
            return '降順';
        }
      },
      'kEnum.itemOrderKey' => ({required ItemOrderKey context}) {
        switch (context) {
          case ItemOrderKey.createdAt:
            return '作成日時';
          case ItemOrderKey.name:
            return '名前';
          case ItemOrderKey.wishRank:
            return '欲しい度';
          case ItemOrderKey.wishDate:
            return 'ほしい日';
        }
      },
      'kEnum.ageGroup' => ({required AgeGroup context}) {
        switch (context) {
          case AgeGroup.child:
            return 'こども';
          case AgeGroup.adult:
            return 'おとな';
        }
      },
      'kEnum.purchaseStatus' => ({required PurchaseStatus context}) {
        switch (context) {
          case PurchaseStatus.notPurchased:
            return '未購入';
          case PurchaseStatus.purchasePlan:
            return '購入予定';
          case PurchaseStatus.purchased:
            return '購入済';
        }
      },
      'exceptions.businessException' =>
        ({required BusinessExceptionType context}) {
          switch (context) {
            case BusinessExceptionType.deleted:
              return '削除済です。';
            case BusinessExceptionType.updateTargetNotFound:
              return '保存に失敗しました、あらためて操作を行ってください。';
            case BusinessExceptionType.notSelectedGroup:
              return 'グループが選択されていません。 グループを選択してください。';
            case BusinessExceptionType.notAuth:
              return 'ログイン情報が取得できませんでした。 ログインし直して、再度実行して下さい。';
            case BusinessExceptionType.createDynamicLinkUnknown:
              return '招待リンクの作成に失敗しました。';
            case BusinessExceptionType.joinGroupPolicyJoinedGroup:
              return 'すでに参加しています。';
            case BusinessExceptionType.joinGroupPolicyExpired:
              return '招待リンクの有効期限が切れています。';
            case BusinessExceptionType.joinGroupPolicyNotAuth:
              return '認証エラーが発生しました。';
            case BusinessExceptionType.joinGroupPolicyLimitOver:
              return 'グループの参加上限(5件)に達しました。';
            case BusinessExceptionType.joinGroupPolicyInvalidShareLink:
              return '招待リンクが正しくありません。';
            case BusinessExceptionType.leaveGroupPolicyOwner:
              return 'グループの所有者は脱退できません。グループを削除してください。';
            case BusinessExceptionType.deleteUserPolicyGroupOwner:
              return '所有しているグループがあるため退会できません。 グループ一覧で、所有しているグループを削除してからもう一度お試しください。';
            case BusinessExceptionType.registrationItemPolicyLimitOver:
              return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
            case BusinessExceptionType.signInPolicyLinkedAccount:
              return 'すでに連携済のアカウントです。';
            case BusinessExceptionType.googleSignInUnknown:
              return 'Google認証に失敗しました。';
            case BusinessExceptionType.appInPurchasePolicyPackageNotExist:
              return '購入処理に失敗しました。';
            case BusinessExceptionType.appInPurchasePolicyPackageNotActive:
              return '購入処理に失敗しました。';
          }
        },
      'exceptions.errorMessage.unexpected' => '予期せぬエラーが発生しました。',
      _ => null,
    };
  }
}
