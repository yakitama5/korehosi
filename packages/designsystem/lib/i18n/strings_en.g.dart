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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.yes': return 'Yes';
			case 'common.no': return 'No';
			case 'common.itmizedTextPrefix': return '・';
			case 'common.save': return '保存';
			case 'common.delete': return '削除';
			case 'common.edit': return '編集';
			case 'common.unset': return '<未設定>';
			case 'common.requiredMark': return '*';
			case 'common.requiredHelper': return '*必須項目';
			case 'common.next': return '次へ';
			case 'common.back': return '戻る';
			case 'common.prev': return '前へ';
			case 'common.skip': return 'スキップ';
			case 'common.ok': return 'OK';
			case 'common.cancel': return 'キャンセル';
			case 'common.reset': return 'リセット';
			case 'common.apply': return '適用';
			case 'common.all': return 'すべて';
			case 'common.noName': return '名無し';
			case 'designsystem.imageSourceSelect.shoot': return '写真を撮る';
			case 'designsystem.imageSourceSelect.chooseFromLibrary': return 'ライブラリから画像を選択';
			case 'designsystem.confirmDiscardChanges.title': return '変更を破棄しますか？';
			case 'designsystem.confirmDiscardChanges.message': return 'すべての変更は失われます';
			case 'designsystem.confirmDiscardChanges.discard': return '破棄';
			case 'designsystem.confirmDiscardChanges.notDiscard': return '破棄しない';
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
			};
			default: return null;
		}
	}
}

