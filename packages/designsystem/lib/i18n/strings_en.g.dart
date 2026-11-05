///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:packages_application/item.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';
import 'package:slang/generated.dart';

import 'strings.g.dart';

// Path: <root>
class TranslationsEn extends Translations
    with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEn({
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
             locale: AppLocale.en,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ) {
    _meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  final TranslationMetadata<AppLocale, Translations> _meta;
  @override
  TranslationMetadata<AppLocale, Translations> get $meta => _meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => _meta.getTranslation(key) ?? super[key];

  late final TranslationsEn _root = this; // ignore: unused_field

  @override
  TranslationsEn $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsEn(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _Translations$common$en common = _Translations$common$en._(_root);
  @override
  late final _Translations$designsystem$en designsystem =
      _Translations$designsystem$en._(_root);
  @override
  late final _Translations$kEnum$en kEnum = _Translations$kEnum$en._(_root);
  @override
  late final _Translations$exceptions$en exceptions =
      _Translations$exceptions$en._(_root);
}

// Path: common
class _Translations$common$en extends Translations$common$ja {
  _Translations$common$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get yes => 'Yes';
  @override
  String get no => 'No';
  @override
  String get itemizedTextPrefix => '・';
  @override
  String get save => '保存';
  @override
  String get delete => '削除';
  @override
  String get edit => '編集';
  @override
  String get unset => '<未設定>';
  @override
  String get requiredMark => '*';
  @override
  String get requiredHelper => '*必須項目';
  @override
  String get next => '次へ';
  @override
  String get back => '戻る';
  @override
  String get prev => '前へ';
  @override
  String get skip => 'スキップ';
  @override
  String get ok => 'OK';
  @override
  String get cancel => 'キャンセル';
  @override
  String get reset => 'リセット';
  @override
  String get apply => '適用';
  @override
  String get all => 'すべて';
  @override
  String get noName => '名無し';
}

// Path: designsystem
class _Translations$designsystem$en extends Translations$designsystem$ja {
  _Translations$designsystem$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _Translations$designsystem$imageSourceSelect$en imageSourceSelect =
      _Translations$designsystem$imageSourceSelect$en._(_root);
  @override
  late final _Translations$designsystem$confirmDiscardChanges$en
  confirmDiscardChanges = _Translations$designsystem$confirmDiscardChanges$en._(
    _root,
  );
  @override
  late final _Translations$designsystem$permissionMessages$en
  permissionMessages = _Translations$designsystem$permissionMessages$en._(
    _root,
  );
  @override
  late final _Translations$designsystem$sendUrlErrorDialog$en
  sendUrlErrorDialog = _Translations$designsystem$sendUrlErrorDialog$en._(
    _root,
  );
  @override
  late final _Translations$designsystem$appUpdate$en appUpdate =
      _Translations$designsystem$appUpdate$en._(_root);
  @override
  late final _Translations$designsystem$validationError$en validationError =
      _Translations$designsystem$validationError$en._(_root);
  @override
  late final _Translations$designsystem$format$en format =
      _Translations$designsystem$format$en._(_root);
}

// Path: kEnum
class _Translations$kEnum$en extends Translations$kEnum$ja {
  _Translations$kEnum$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String uiStyle({required UIStyle context}) {
    switch (context) {
      case UIStyle.system:
        return 'System';
      case UIStyle.android:
        return 'Android';
      case UIStyle.ios:
        return 'iOS';
    }
  }

  @override
  String themeColor({required ThemeColor context}) {
    switch (context) {
      case ThemeColor.appColor:
        return 'AppColor';
      case ThemeColor.dynamicColor:
        return 'DynamicColor';
      case ThemeColor.blue:
        return 'Blue';
      case ThemeColor.purple:
        return 'Purple';
      case ThemeColor.green:
        return 'Green';
      case ThemeColor.red:
        return 'Red';
      case ThemeColor.pink:
        return 'Pink';
      case ThemeColor.yellow:
        return 'Yellow';
      case ThemeColor.orange:
        return 'Orange';
    }
  }

  @override
  String themeMode({required ThemeMode context}) {
    switch (context) {
      case ThemeMode.system:
        return 'System';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
    }
  }

  @override
  late final _Translations$kEnum$viewLayout$en viewLayout =
      _Translations$kEnum$viewLayout$en._(_root);
  @override
  String sortOrder({required SortOrder context}) {
    switch (context) {
      case SortOrder.asc:
        return 'ASC';
      case SortOrder.desc:
        return 'DESC';
    }
  }

  @override
  String itemOrderKey({required ItemOrderKey context}) {
    switch (context) {
      case ItemOrderKey.createdAt:
        return 'Created at';
      case ItemOrderKey.name:
        return 'Name';
      case ItemOrderKey.wishRank:
        return 'Degree of desirability';
      case ItemOrderKey.wishDate:
        return 'Desired date';
    }
  }

  @override
  String ageGroup({required AgeGroup context}) {
    switch (context) {
      case AgeGroup.child:
        return 'child';
      case AgeGroup.adult:
        return 'adult';
    }
  }

  @override
  String purchaseStatus({required PurchaseStatus context}) {
    switch (context) {
      case PurchaseStatus.notPurchased:
        return 'unpurchased';
      case PurchaseStatus.purchasePlan:
        return 'Planned purchases';
      case PurchaseStatus.purchased:
        return 'already bought';
    }
  }
}

// Path: exceptions
class _Translations$exceptions$en extends Translations$exceptions$ja {
  _Translations$exceptions$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
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
        return 'Group owners cannot leave. Delete the group instead.';
      case BusinessExceptionType.deleteUserPolicyGroupOwner:
        return 'You can\'t delete your account while you own a group. Delete the groups you own, then try again.';
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
}

// Path: designsystem.imageSourceSelect
class _Translations$designsystem$imageSourceSelect$en
    extends Translations$designsystem$imageSourceSelect$ja {
  _Translations$designsystem$imageSourceSelect$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get shoot => '写真を撮る';
  @override
  String get chooseFromLibrary => 'ライブラリから画像を選択';
}

// Path: designsystem.confirmDiscardChanges
class _Translations$designsystem$confirmDiscardChanges$en
    extends Translations$designsystem$confirmDiscardChanges$ja {
  _Translations$designsystem$confirmDiscardChanges$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => '変更を破棄しますか？';
  @override
  String get message => 'すべての変更は失われます';
  @override
  String get discard => '破棄';
  @override
  String get notDiscard => '破棄しない';
}

// Path: designsystem.permissionMessages
class _Translations$designsystem$permissionMessages$en
    extends Translations$designsystem$permissionMessages$ja {
  _Translations$designsystem$permissionMessages$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get photos => 'ギャラリーへのアクセス';
  @override
  String get camera => 'カメラへのアクセス';
  @override
  String get pushNotification => 'プッシュ通知';
  @override
  late final _Translations$designsystem$permissionMessages$permissionLackDialog$en
  permissionLackDialog =
      _Translations$designsystem$permissionMessages$permissionLackDialog$en._(
        _root,
      );
  @override
  late final _Translations$designsystem$permissionMessages$permissionOffDialog$en
  permissionOffDialog =
      _Translations$designsystem$permissionMessages$permissionOffDialog$en._(
        _root,
      );
}

// Path: designsystem.sendUrlErrorDialog
class _Translations$designsystem$sendUrlErrorDialog$en
    extends Translations$designsystem$sendUrlErrorDialog$ja {
  _Translations$designsystem$sendUrlErrorDialog$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'エラー';
  @override
  String get message => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
}

// Path: designsystem.appUpdate
class _Translations$designsystem$appUpdate$en
    extends Translations$designsystem$appUpdate$ja {
  _Translations$designsystem$appUpdate$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _Translations$designsystem$appUpdate$updatePossible$en
  updatePossible = _Translations$designsystem$appUpdate$updatePossible$en._(
    _root,
  );
  @override
  late final _Translations$designsystem$appUpdate$forceUpdate$en forceUpdate =
      _Translations$designsystem$appUpdate$forceUpdate$en._(_root);
  @override
  String get navigateStore => 'ストアを開く';
}

// Path: designsystem.validationError
class _Translations$designsystem$validationError$en
    extends Translations$designsystem$validationError$ja {
  _Translations$designsystem$validationError$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get required => '必須項目を入力して下さい';
  @override
  String get url => '正しいURL形式で入力して下さい';
}

// Path: designsystem.format
class _Translations$designsystem$format$en
    extends Translations$designsystem$format$ja {
  _Translations$designsystem$format$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String percent({required String percent}) => '${percent}%';
}

// Path: kEnum.viewLayout
class _Translations$kEnum$viewLayout$en
    extends Translations$kEnum$viewLayout$ja {
  _Translations$kEnum$viewLayout$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Layout';
  @override
  String typeName({required ViewLayout context}) {
    switch (context) {
      case ViewLayout.grid:
        return 'Grid';
      case ViewLayout.list:
        return 'List';
    }
  }
}

// Path: designsystem.permissionMessages.permissionLackDialog
class _Translations$designsystem$permissionMessages$permissionLackDialog$en
    extends
        Translations$designsystem$permissionMessages$permissionLackDialog$ja {
  _Translations$designsystem$permissionMessages$permissionLackDialog$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String title({required String permission}) => '${permission}が許可されていません';
  @override
  String message({required String permission}) =>
      '設定アプリを開いて${permission}を許可してください';
  @override
  String get openSettings => '設定アプリを開く';
}

// Path: designsystem.permissionMessages.permissionOffDialog
class _Translations$designsystem$permissionMessages$permissionOffDialog$en
    extends
        Translations$designsystem$permissionMessages$permissionOffDialog$ja {
  _Translations$designsystem$permissionMessages$permissionOffDialog$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String title({required String permission}) => '${permission}をオフにしますか？';
  @override
  String message({required String permission}) =>
      '設定アプリを開いて${permission}をオフにしてください';
  @override
  String get openSettings => '設定アプリを開く';
}

// Path: designsystem.appUpdate.updatePossible
class _Translations$designsystem$appUpdate$updatePossible$en
    extends Translations$designsystem$appUpdate$updatePossible$ja {
  _Translations$designsystem$appUpdate$updatePossible$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get message =>
      '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
}

// Path: designsystem.appUpdate.forceUpdate
class _Translations$designsystem$appUpdate$forceUpdate$en
    extends Translations$designsystem$appUpdate$forceUpdate$ja {
  _Translations$designsystem$appUpdate$forceUpdate$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'common.yes' => 'Yes',
      'common.no' => 'No',
      'common.itemizedTextPrefix' => '・',
      'common.save' => '保存',
      'common.delete' => '削除',
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
            return 'System';
          case UIStyle.android:
            return 'Android';
          case UIStyle.ios:
            return 'iOS';
        }
      },
      'kEnum.themeColor' => ({required ThemeColor context}) {
        switch (context) {
          case ThemeColor.appColor:
            return 'AppColor';
          case ThemeColor.dynamicColor:
            return 'DynamicColor';
          case ThemeColor.blue:
            return 'Blue';
          case ThemeColor.purple:
            return 'Purple';
          case ThemeColor.green:
            return 'Green';
          case ThemeColor.red:
            return 'Red';
          case ThemeColor.pink:
            return 'Pink';
          case ThemeColor.yellow:
            return 'Yellow';
          case ThemeColor.orange:
            return 'Orange';
        }
      },
      'kEnum.themeMode' => ({required ThemeMode context}) {
        switch (context) {
          case ThemeMode.system:
            return 'System';
          case ThemeMode.light:
            return 'Light';
          case ThemeMode.dark:
            return 'Dark';
        }
      },
      'kEnum.viewLayout.name' => 'Layout',
      'kEnum.viewLayout.typeName' => ({required ViewLayout context}) {
        switch (context) {
          case ViewLayout.grid:
            return 'Grid';
          case ViewLayout.list:
            return 'List';
        }
      },
      'kEnum.sortOrder' => ({required SortOrder context}) {
        switch (context) {
          case SortOrder.asc:
            return 'ASC';
          case SortOrder.desc:
            return 'DESC';
        }
      },
      'kEnum.itemOrderKey' => ({required ItemOrderKey context}) {
        switch (context) {
          case ItemOrderKey.createdAt:
            return 'Created at';
          case ItemOrderKey.name:
            return 'Name';
          case ItemOrderKey.wishRank:
            return 'Degree of desirability';
          case ItemOrderKey.wishDate:
            return 'Desired date';
        }
      },
      'kEnum.ageGroup' => ({required AgeGroup context}) {
        switch (context) {
          case AgeGroup.child:
            return 'child';
          case AgeGroup.adult:
            return 'adult';
        }
      },
      'kEnum.purchaseStatus' => ({required PurchaseStatus context}) {
        switch (context) {
          case PurchaseStatus.notPurchased:
            return 'unpurchased';
          case PurchaseStatus.purchasePlan:
            return 'Planned purchases';
          case PurchaseStatus.purchased:
            return 'already bought';
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
              return 'Group owners cannot leave. Delete the group instead.';
            case BusinessExceptionType.deleteUserPolicyGroupOwner:
              return 'You can\'t delete your account while you own a group. Delete the groups you own, then try again.';
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
      _ => null,
    };
  }
}
