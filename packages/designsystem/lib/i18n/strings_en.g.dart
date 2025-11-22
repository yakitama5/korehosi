///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

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
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	@override late final _TranslationsDesignsystemEn designsystem = _TranslationsDesignsystemEn._(_root);
	@override late final _TranslationsKEnumEn kEnum = _TranslationsKEnumEn._(_root);
	@override late final _TranslationsExceptionsEn exceptions = _TranslationsExceptionsEn._(_root);
}

// Path: common
class _TranslationsCommonEn extends TranslationsCommonJa {
	_TranslationsCommonEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get yes => 'Yes';
	@override String get no => 'No';
	@override String get itmizedTextPrefix => '・';
	@override String get save => '保存';
	@override String get delete => '削除';
	@override String get edit => '編集';
	@override String get unset => '<未設定>';
	@override String get requiredMark => '*';
	@override String get requiredHelper => '*必須項目';
	@override String get next => '次へ';
	@override String get back => '戻る';
	@override String get prev => '前へ';
	@override String get skip => 'スキップ';
	@override String get ok => 'OK';
	@override String get cancel => 'キャンセル';
	@override String get reset => 'リセット';
	@override String get apply => '適用';
	@override String get all => 'すべて';
	@override String get noName => '名無し';
}

// Path: designsystem
class _TranslationsDesignsystemEn extends TranslationsDesignsystemJa {
	_TranslationsDesignsystemEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDesignsystemImageSourceSelectEn imageSourceSelect = _TranslationsDesignsystemImageSourceSelectEn._(_root);
	@override late final _TranslationsDesignsystemConfirmDiscardChangesEn confirmDiscardChanges = _TranslationsDesignsystemConfirmDiscardChangesEn._(_root);
	@override late final _TranslationsDesignsystemPermissionMessagesEn permissionMessages = _TranslationsDesignsystemPermissionMessagesEn._(_root);
	@override late final _TranslationsDesignsystemSendUrlErrorDialogEn sendUrlErrorDialog = _TranslationsDesignsystemSendUrlErrorDialogEn._(_root);
	@override late final _TranslationsDesignsystemAppUpdateEn appUpdate = _TranslationsDesignsystemAppUpdateEn._(_root);
	@override late final _TranslationsDesignsystemValidationErrorEn validationError = _TranslationsDesignsystemValidationErrorEn._(_root);
	@override late final _TranslationsDesignsystemFormatEn format = _TranslationsDesignsystemFormatEn._(_root);
}

// Path: kEnum
class _TranslationsKEnumEn extends TranslationsKEnumJa {
	_TranslationsKEnumEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String uiStyle({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'System';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}
	@override String themeColor({required ThemeColor context}) {
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
	@override String themeMode({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'System';
			case ThemeMode.light:
				return 'Light';
			case ThemeMode.dark:
				return 'Dark';
		}
	}
	@override late final _TranslationsKEnumViewLayoutEn viewLayout = _TranslationsKEnumViewLayoutEn._(_root);
	@override String sortOrder({required SortOrder context}) {
		switch (context) {
			case SortOrder.asc:
				return 'ASC';
			case SortOrder.desc:
				return 'DESC';
		}
	}
	@override String itemOrderKey({required ItemOrderKey context}) {
		switch (context) {
			case ItemOrderKey.createdAt:
				return 'Created at';
			case ItemOrderKey.name:
				return 'Name';
			case ItemOrderKey.wishRank:
				return 'Degree of desirability';
		}
	}
	@override String ageGroup({required AgeGroup context}) {
		switch (context) {
			case AgeGroup.child:
				return 'child';
			case AgeGroup.adult:
				return 'adult';
		}
	}
	@override String purchaseStatus({required PurchaseStatus context}) {
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
class _TranslationsExceptionsEn extends TranslationsExceptionsJa {
	_TranslationsExceptionsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String businessException({required BusinessExceptionType context}) {
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
class _TranslationsDesignsystemImageSourceSelectEn extends TranslationsDesignsystemImageSourceSelectJa {
	_TranslationsDesignsystemImageSourceSelectEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get shoot => '写真を撮る';
	@override String get chooseFromLibrary => 'ライブラリから画像を選択';
}

// Path: designsystem.confirmDiscardChanges
class _TranslationsDesignsystemConfirmDiscardChangesEn extends TranslationsDesignsystemConfirmDiscardChangesJa {
	_TranslationsDesignsystemConfirmDiscardChangesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => '変更を破棄しますか？';
	@override String get message => 'すべての変更は失われます';
	@override String get discard => '破棄';
	@override String get notDiscard => '破棄しない';
}

// Path: designsystem.permissionMessages
class _TranslationsDesignsystemPermissionMessagesEn extends TranslationsDesignsystemPermissionMessagesJa {
	_TranslationsDesignsystemPermissionMessagesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get photos => 'ギャラリーへのアクセス';
	@override String get camera => 'カメラへのアクセス';
	@override String get pushNotification => 'プッシュ通知';
	@override late final _TranslationsDesignsystemPermissionMessagesPermissionLackDialogEn permissionLackDialog = _TranslationsDesignsystemPermissionMessagesPermissionLackDialogEn._(_root);
	@override late final _TranslationsDesignsystemPermissionMessagesPermissionOffDialogEn permissionOffDialog = _TranslationsDesignsystemPermissionMessagesPermissionOffDialogEn._(_root);
}

// Path: designsystem.sendUrlErrorDialog
class _TranslationsDesignsystemSendUrlErrorDialogEn extends TranslationsDesignsystemSendUrlErrorDialogJa {
	_TranslationsDesignsystemSendUrlErrorDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'エラー';
	@override String get message => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
}

// Path: designsystem.appUpdate
class _TranslationsDesignsystemAppUpdateEn extends TranslationsDesignsystemAppUpdateJa {
	_TranslationsDesignsystemAppUpdateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDesignsystemAppUpdateUpdatePossibleEn updatePossible = _TranslationsDesignsystemAppUpdateUpdatePossibleEn._(_root);
	@override late final _TranslationsDesignsystemAppUpdateForceUpdateEn forceUpdate = _TranslationsDesignsystemAppUpdateForceUpdateEn._(_root);
	@override String get navigateStore => 'ストアを開く';
}

// Path: designsystem.validationError
class _TranslationsDesignsystemValidationErrorEn extends TranslationsDesignsystemValidationErrorJa {
	_TranslationsDesignsystemValidationErrorEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get required => '必須項目を入力して下さい';
	@override String get url => '正しいURL形式で入力して下さい';
}

// Path: designsystem.format
class _TranslationsDesignsystemFormatEn extends TranslationsDesignsystemFormatJa {
	_TranslationsDesignsystemFormatEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String percent({required String percent}) => '${percent}%';
}

// Path: kEnum.viewLayout
class _TranslationsKEnumViewLayoutEn extends TranslationsKEnumViewLayoutJa {
	_TranslationsKEnumViewLayoutEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Layout';
	@override String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'Grid';
			case ViewLayout.list:
				return 'List';
		}
	}
}

// Path: designsystem.permissionMessages.permissionLackDialog
class _TranslationsDesignsystemPermissionMessagesPermissionLackDialogEn extends TranslationsDesignsystemPermissionMessagesPermissionLackDialogJa {
	_TranslationsDesignsystemPermissionMessagesPermissionLackDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String title({required String permission}) => '${permission}が許可されていません';
	@override String message({required String permission}) => '設定アプリを開いて${permission}を許可してください';
	@override String get openSettings => '設定アプリを開く';
}

// Path: designsystem.permissionMessages.permissionOffDialog
class _TranslationsDesignsystemPermissionMessagesPermissionOffDialogEn extends TranslationsDesignsystemPermissionMessagesPermissionOffDialogJa {
	_TranslationsDesignsystemPermissionMessagesPermissionOffDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String title({required String permission}) => '${permission}をオフにしますか？';
	@override String message({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
	@override String get openSettings => '設定アプリを開く';
}

// Path: designsystem.appUpdate.updatePossible
class _TranslationsDesignsystemAppUpdateUpdatePossibleEn extends TranslationsDesignsystemAppUpdateUpdatePossibleJa {
	_TranslationsDesignsystemAppUpdateUpdatePossibleEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
}

// Path: designsystem.appUpdate.forceUpdate
class _TranslationsDesignsystemAppUpdateForceUpdateEn extends TranslationsDesignsystemAppUpdateForceUpdateJa {
	_TranslationsDesignsystemAppUpdateForceUpdateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'common.yes' => 'Yes',
			'common.no' => 'No',
			'common.itmizedTextPrefix' => '・',
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
			'designsystem.permissionMessages.permissionLackDialog.title' => ({required String permission}) => '${permission}が許可されていません',
			'designsystem.permissionMessages.permissionLackDialog.message' => ({required String permission}) => '設定アプリを開いて${permission}を許可してください',
			'designsystem.permissionMessages.permissionLackDialog.openSettings' => '設定アプリを開く',
			'designsystem.permissionMessages.permissionOffDialog.title' => ({required String permission}) => '${permission}をオフにしますか？',
			'designsystem.permissionMessages.permissionOffDialog.message' => ({required String permission}) => '設定アプリを開いて${permission}をオフにしてください',
			'designsystem.permissionMessages.permissionOffDialog.openSettings' => '設定アプリを開く',
			'designsystem.sendUrlErrorDialog.title' => 'エラー',
			'designsystem.sendUrlErrorDialog.message' => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。',
			'designsystem.appUpdate.updatePossible.message' => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？',
			'designsystem.appUpdate.forceUpdate.message' => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。',
			'designsystem.appUpdate.navigateStore' => 'ストアを開く',
			'designsystem.validationError.required' => '必須項目を入力して下さい',
			'designsystem.validationError.url' => '正しいURL形式で入力して下さい',
			'designsystem.format.percent' => ({required String percent}) => '${percent}%',
			'kEnum.uiStyle' => ({required UIStyle context}) { switch (context) { case UIStyle.system: return 'System'; case UIStyle.android: return 'Android'; case UIStyle.ios: return 'iOS'; } }, 
			'kEnum.themeColor' => ({required ThemeColor context}) { switch (context) { case ThemeColor.appColor: return 'AppColor'; case ThemeColor.dynamicColor: return 'DynamicColor'; case ThemeColor.blue: return 'Blue'; case ThemeColor.purple: return 'Purple'; case ThemeColor.green: return 'Green'; case ThemeColor.red: return 'Red'; case ThemeColor.pink: return 'Pink'; case ThemeColor.yellow: return 'Yellow'; case ThemeColor.orange: return 'Orange'; } }, 
			'kEnum.themeMode' => ({required ThemeMode context}) { switch (context) { case ThemeMode.system: return 'System'; case ThemeMode.light: return 'Light'; case ThemeMode.dark: return 'Dark'; } }, 
			'kEnum.viewLayout.name' => 'Layout',
			'kEnum.viewLayout.typeName' => ({required ViewLayout context}) { switch (context) { case ViewLayout.grid: return 'Grid'; case ViewLayout.list: return 'List'; } }, 
			'kEnum.sortOrder' => ({required SortOrder context}) { switch (context) { case SortOrder.asc: return 'ASC'; case SortOrder.desc: return 'DESC'; } }, 
			'kEnum.itemOrderKey' => ({required ItemOrderKey context}) { switch (context) { case ItemOrderKey.createdAt: return 'Created at'; case ItemOrderKey.name: return 'Name'; case ItemOrderKey.wishRank: return 'Degree of desirability'; } }, 
			'kEnum.ageGroup' => ({required AgeGroup context}) { switch (context) { case AgeGroup.child: return 'child'; case AgeGroup.adult: return 'adult'; } }, 
			'kEnum.purchaseStatus' => ({required PurchaseStatus context}) { switch (context) { case PurchaseStatus.notPurchased: return 'unpurchased'; case PurchaseStatus.purchasePlan: return 'Planned purchases'; case PurchaseStatus.purchased: return 'already bought'; } }, 
			'exceptions.businessException' => ({required BusinessExceptionType context}) { switch (context) { case BusinessExceptionType.deleted: return '削除済です。'; case BusinessExceptionType.updateTargetNotFound: return '保存に失敗しました、あらためて操作を行ってください。'; case BusinessExceptionType.notSelectedGroup: return 'グループが選択されていません。 グループを選択してください。'; case BusinessExceptionType.notAuth: return 'ログイン情報が取得できませんでした。 ログインし直して、再度実行して下さい。'; case BusinessExceptionType.createDynamicLinkUnknown: return '招待リンクの作成に失敗しました。'; case BusinessExceptionType.joinGroupPolicyJoinedGroup: return 'すでに参加しています。'; case BusinessExceptionType.joinGroupPolicyExpired: return '招待リンクの有効期限が切れています。'; case BusinessExceptionType.joinGroupPolicyNotAuth: return '認証エラーが発生しました。'; case BusinessExceptionType.joinGroupPolicyLimitOver: return 'グループの参加上限(5件)に達しました。'; case BusinessExceptionType.joinGroupPolicyInvalidShareLink: return '招待リンクが正しくありません。'; case BusinessExceptionType.registrationItemPolicyLimitOver: return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。'; case BusinessExceptionType.signInPolicyLinkedAccount: return 'すでに連携済のアカウントです。'; case BusinessExceptionType.googleSignInUnknown: return 'Google認証に失敗しました。'; case BusinessExceptionType.appInPurchasePolicyPackageNotExist: return '購入処理に失敗しました。'; case BusinessExceptionType.appInPurchasePolicyPackageNotActive: return '購入処理に失敗しました。'; } }, 
			_ => null,
		};
	}
}

