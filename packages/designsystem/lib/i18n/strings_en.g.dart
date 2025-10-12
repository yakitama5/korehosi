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
	@override late final _TranslationsCommonCommonEn common = _TranslationsCommonCommonEn._(_root);
	@override late final _TranslationsCommonPermissionMessagesEn permissionMessages = _TranslationsCommonPermissionMessagesEn._(_root);
	@override late final _TranslationsCommonSendUrlErrorDialogEn sendUrlErrorDialog = _TranslationsCommonSendUrlErrorDialogEn._(_root);
	@override late final _TranslationsCommonAppUpdateEn appUpdate = _TranslationsCommonAppUpdateEn._(_root);
	@override late final _TranslationsCommonValidationErrorEn validationError = _TranslationsCommonValidationErrorEn._(_root);
	@override late final _TranslationsCommonFormatEn format = _TranslationsCommonFormatEn._(_root);
}

// Path: designsystem
class _TranslationsDesignsystemEn extends TranslationsDesignsystemJa {
	_TranslationsDesignsystemEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDesignsystemCommonEn common = _TranslationsDesignsystemCommonEn._(_root);
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

// Path: common.common
class _TranslationsCommonCommonEn extends TranslationsCommonCommonJa {
	_TranslationsCommonCommonEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get yes => 'Yes';
	@override String get no => 'No';
	@override late final _TranslationsCommonCommonConfirmDiscardChangesEn confirmDiscardChanges = _TranslationsCommonCommonConfirmDiscardChangesEn._(_root);
	@override String get bullet => '・';
	@override String get save => '保存';
	@override String get delete => '削除';
	@override String get edit => '編集';
	@override String get unset => '<未設定>';
	@override late final _TranslationsCommonCommonImageSourceSelectEn imageSourceSelect = _TranslationsCommonCommonImageSourceSelectEn._(_root);
	@override String get requiredMark => '*';
	@override String get requiredHelper => '*必須項目';
}

// Path: common.permissionMessages
class _TranslationsCommonPermissionMessagesEn extends TranslationsCommonPermissionMessagesJa {
	_TranslationsCommonPermissionMessagesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get photos => 'ギャラリーへのアクセス';
	@override String get camera => 'カメラへのアクセス';
	@override String get pushNotification => 'プッシュ通知';
	@override late final _TranslationsCommonPermissionMessagesPermissionLackDialogEn permissionLackDialog = _TranslationsCommonPermissionMessagesPermissionLackDialogEn._(_root);
	@override late final _TranslationsCommonPermissionMessagesPermissionOffDialogEn permissionOffDialog = _TranslationsCommonPermissionMessagesPermissionOffDialogEn._(_root);
}

// Path: common.sendUrlErrorDialog
class _TranslationsCommonSendUrlErrorDialogEn extends TranslationsCommonSendUrlErrorDialogJa {
	_TranslationsCommonSendUrlErrorDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'エラー';
	@override String get message => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
}

// Path: common.appUpdate
class _TranslationsCommonAppUpdateEn extends TranslationsCommonAppUpdateJa {
	_TranslationsCommonAppUpdateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonAppUpdateUpdatePossibleEn updatePossible = _TranslationsCommonAppUpdateUpdatePossibleEn._(_root);
	@override late final _TranslationsCommonAppUpdateForceUpdateEn forceUpdate = _TranslationsCommonAppUpdateForceUpdateEn._(_root);
	@override String get navigateStore => 'ストアを開く';
}

// Path: common.validationError
class _TranslationsCommonValidationErrorEn extends TranslationsCommonValidationErrorJa {
	_TranslationsCommonValidationErrorEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get required => '必須項目を入力して下さい';
	@override String get url => '正しいURL形式で入力して下さい';
}

// Path: common.format
class _TranslationsCommonFormatEn extends TranslationsCommonFormatJa {
	_TranslationsCommonFormatEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String percent({required String percent}) => '${percent}%';
}

// Path: designsystem.common
class _TranslationsDesignsystemCommonEn extends TranslationsDesignsystemCommonJa {
	_TranslationsDesignsystemCommonEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get yes => 'Yes';
	@override String get no => 'No';
	@override late final _TranslationsDesignsystemCommonConfirmDiscardChangesEn confirmDiscardChanges = _TranslationsDesignsystemCommonConfirmDiscardChangesEn._(_root);
	@override String get bullet => '・';
	@override String get save => '保存';
	@override String get delete => '削除';
	@override String get edit => '編集';
	@override String get unset => '<未設定>';
	@override late final _TranslationsDesignsystemCommonImageSourceSelectEn imageSourceSelect = _TranslationsDesignsystemCommonImageSourceSelectEn._(_root);
	@override String get requiredMark => '*';
	@override String get requiredHelper => '*必須項目';
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

// Path: common.common.confirmDiscardChanges
class _TranslationsCommonCommonConfirmDiscardChangesEn extends TranslationsCommonCommonConfirmDiscardChangesJa {
	_TranslationsCommonCommonConfirmDiscardChangesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => '変更を破棄しますか？';
	@override String get message => 'すべての変更は失われます';
	@override String get discard => '破棄';
	@override String get notDiscard => '破棄しない';
}

// Path: common.common.imageSourceSelect
class _TranslationsCommonCommonImageSourceSelectEn extends TranslationsCommonCommonImageSourceSelectJa {
	_TranslationsCommonCommonImageSourceSelectEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get shoot => '写真を撮る';
	@override String get chooseFromLibrary => 'ライブラリから画像を選択';
}

// Path: common.permissionMessages.permissionLackDialog
class _TranslationsCommonPermissionMessagesPermissionLackDialogEn extends TranslationsCommonPermissionMessagesPermissionLackDialogJa {
	_TranslationsCommonPermissionMessagesPermissionLackDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String title({required String permission}) => '${permission}が許可されていません';
	@override String message({required String permission}) => '設定アプリを開いて${permission}を許可してください';
	@override String get openSettings => '設定アプリを開く';
}

// Path: common.permissionMessages.permissionOffDialog
class _TranslationsCommonPermissionMessagesPermissionOffDialogEn extends TranslationsCommonPermissionMessagesPermissionOffDialogJa {
	_TranslationsCommonPermissionMessagesPermissionOffDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String title({required String permission}) => '${permission}をオフにしますか？';
	@override String message({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
	@override String get openSettings => '設定アプリを開く';
}

// Path: common.appUpdate.updatePossible
class _TranslationsCommonAppUpdateUpdatePossibleEn extends TranslationsCommonAppUpdateUpdatePossibleJa {
	_TranslationsCommonAppUpdateUpdatePossibleEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
}

// Path: common.appUpdate.forceUpdate
class _TranslationsCommonAppUpdateForceUpdateEn extends TranslationsCommonAppUpdateForceUpdateJa {
	_TranslationsCommonAppUpdateForceUpdateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
}

// Path: designsystem.common.confirmDiscardChanges
class _TranslationsDesignsystemCommonConfirmDiscardChangesEn extends TranslationsDesignsystemCommonConfirmDiscardChangesJa {
	_TranslationsDesignsystemCommonConfirmDiscardChangesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => '変更を破棄しますか？';
	@override String get message => 'すべての変更は失われます';
	@override String get discard => '破棄';
	@override String get notDiscard => '破棄しない';
}

// Path: designsystem.common.imageSourceSelect
class _TranslationsDesignsystemCommonImageSourceSelectEn extends TranslationsDesignsystemCommonImageSourceSelectJa {
	_TranslationsDesignsystemCommonImageSourceSelectEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get shoot => '写真を撮る';
	@override String get chooseFromLibrary => 'ライブラリから画像を選択';
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.common.yes': return 'Yes';
			case 'common.common.no': return 'No';
			case 'common.common.confirmDiscardChanges.title': return '変更を破棄しますか？';
			case 'common.common.confirmDiscardChanges.message': return 'すべての変更は失われます';
			case 'common.common.confirmDiscardChanges.discard': return '破棄';
			case 'common.common.confirmDiscardChanges.notDiscard': return '破棄しない';
			case 'common.common.bullet': return '・';
			case 'common.common.save': return '保存';
			case 'common.common.delete': return '削除';
			case 'common.common.edit': return '編集';
			case 'common.common.unset': return '<未設定>';
			case 'common.common.imageSourceSelect.shoot': return '写真を撮る';
			case 'common.common.imageSourceSelect.chooseFromLibrary': return 'ライブラリから画像を選択';
			case 'common.common.requiredMark': return '*';
			case 'common.common.requiredHelper': return '*必須項目';
			case 'common.permissionMessages.photos': return 'ギャラリーへのアクセス';
			case 'common.permissionMessages.camera': return 'カメラへのアクセス';
			case 'common.permissionMessages.pushNotification': return 'プッシュ通知';
			case 'common.permissionMessages.permissionLackDialog.title': return ({required String permission}) => '${permission}が許可されていません';
			case 'common.permissionMessages.permissionLackDialog.message': return ({required String permission}) => '設定アプリを開いて${permission}を許可してください';
			case 'common.permissionMessages.permissionLackDialog.openSettings': return '設定アプリを開く';
			case 'common.permissionMessages.permissionOffDialog.title': return ({required String permission}) => '${permission}をオフにしますか？';
			case 'common.permissionMessages.permissionOffDialog.message': return ({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
			case 'common.permissionMessages.permissionOffDialog.openSettings': return '設定アプリを開く';
			case 'common.sendUrlErrorDialog.title': return 'エラー';
			case 'common.sendUrlErrorDialog.message': return 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
			case 'common.appUpdate.updatePossible.message': return '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
			case 'common.appUpdate.forceUpdate.message': return 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
			case 'common.appUpdate.navigateStore': return 'ストアを開く';
			case 'common.validationError.required': return '必須項目を入力して下さい';
			case 'common.validationError.url': return '正しいURL形式で入力して下さい';
			case 'common.format.percent': return ({required String percent}) => '${percent}%';
			case 'designsystem.common.yes': return 'Yes';
			case 'designsystem.common.no': return 'No';
			case 'designsystem.common.confirmDiscardChanges.title': return '変更を破棄しますか？';
			case 'designsystem.common.confirmDiscardChanges.message': return 'すべての変更は失われます';
			case 'designsystem.common.confirmDiscardChanges.discard': return '破棄';
			case 'designsystem.common.confirmDiscardChanges.notDiscard': return '破棄しない';
			case 'designsystem.common.bullet': return '・';
			case 'designsystem.common.save': return '保存';
			case 'designsystem.common.delete': return '削除';
			case 'designsystem.common.edit': return '編集';
			case 'designsystem.common.unset': return '<未設定>';
			case 'designsystem.common.imageSourceSelect.shoot': return '写真を撮る';
			case 'designsystem.common.imageSourceSelect.chooseFromLibrary': return 'ライブラリから画像を選択';
			case 'designsystem.common.requiredMark': return '*';
			case 'designsystem.common.requiredHelper': return '*必須項目';
			case 'designsystem.permissionMessages.photos': return 'ギャラリーへのアクセス';
			case 'designsystem.permissionMessages.camera': return 'カメラへのアクセス';
			case 'designsystem.permissionMessages.pushNotification': return 'プッシュ通知';
			case 'designsystem.permissionMessages.permissionLackDialog.title': return ({required String permission}) => '${permission}が許可されていません';
			case 'designsystem.permissionMessages.permissionLackDialog.message': return ({required String permission}) => '設定アプリを開いて${permission}を許可してください';
			case 'designsystem.permissionMessages.permissionLackDialog.openSettings': return '設定アプリを開く';
			case 'designsystem.permissionMessages.permissionOffDialog.title': return ({required String permission}) => '${permission}をオフにしますか？';
			case 'designsystem.permissionMessages.permissionOffDialog.message': return ({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
			case 'designsystem.permissionMessages.permissionOffDialog.openSettings': return '設定アプリを開く';
			case 'designsystem.sendUrlErrorDialog.title': return 'エラー';
			case 'designsystem.sendUrlErrorDialog.message': return 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
			case 'designsystem.appUpdate.updatePossible.message': return '新しいバージョンが公開されています。 アップデートを行うと、新しい機能をご利用いただけます。 アップデートを行いますか？';
			case 'designsystem.appUpdate.forceUpdate.message': return 'ご利用のバージョンは現在ご利用出来ません。 ストアから新しいバージョンをご利用下さい。';
			case 'designsystem.appUpdate.navigateStore': return 'ストアを開く';
			case 'designsystem.validationError.required': return '必須項目を入力して下さい';
			case 'designsystem.validationError.url': return '正しいURL形式で入力して下さい';
			case 'designsystem.format.percent': return ({required String percent}) => '${percent}%';
			case 'kEnum.uiStyle': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'System';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'kEnum.themeColor': return ({required ThemeColor context}) {
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
			};
			case 'kEnum.themeMode': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'System';
					case ThemeMode.light:
						return 'Light';
					case ThemeMode.dark:
						return 'Dark';
				}
			};
			case 'kEnum.viewLayout.name': return 'Layout';
			case 'kEnum.viewLayout.typeName': return ({required ViewLayout context}) {
				switch (context) {
					case ViewLayout.grid:
						return 'Grid';
					case ViewLayout.list:
						return 'List';
				}
			};
			case 'kEnum.sortOrder': return ({required SortOrder context}) {
				switch (context) {
					case SortOrder.asc:
						return 'ASC';
					case SortOrder.desc:
						return 'DESC';
				}
			};
			case 'kEnum.itemOrderKey': return ({required ItemOrderKey context}) {
				switch (context) {
					case ItemOrderKey.createdAt:
						return 'Created at';
					case ItemOrderKey.name:
						return 'Name';
					case ItemOrderKey.wishRank:
						return 'Degree of desirability';
				}
			};
			case 'kEnum.ageGroup': return ({required AgeGroup context}) {
				switch (context) {
					case AgeGroup.child:
						return 'child';
					case AgeGroup.adult:
						return 'adult';
				}
			};
			case 'kEnum.purchaseStatus': return ({required PurchaseStatus context}) {
				switch (context) {
					case PurchaseStatus.notPurchased:
						return 'unpurchased';
					case PurchaseStatus.purchasePlan:
						return 'Planned purchases';
					case PurchaseStatus.purchased:
						return 'already bought';
				}
			};
			case 'exceptions.businessException': return ({required BusinessExceptionType context}) {
				switch (context) {
					case BusinessExceptionType.deleted:
						return '削除済です。';
					case BusinessExceptionType.updateTargetNotFound:
						return '保存に失敗しました、あらためて操作を行ってください。';
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
			};
			default: return null;
		}
	}
}

