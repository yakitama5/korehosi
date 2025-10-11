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
	@override late final _TranslationsCommonConfirmDiscardChangesEn confirmDiscardChanges = _TranslationsCommonConfirmDiscardChangesEn._(_root);
}

// Path: designsystem
class _TranslationsDesignsystemEn extends TranslationsDesignsystemJa {
	_TranslationsDesignsystemEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDesignsystemAppUpdateEn appUpdate = _TranslationsDesignsystemAppUpdateEn._(_root);
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

// Path: common.confirmDiscardChanges
class _TranslationsCommonConfirmDiscardChangesEn extends TranslationsCommonConfirmDiscardChangesJa {
	_TranslationsCommonConfirmDiscardChangesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Discard changes?';
	@override String get message => 'All changes will be lost';
	@override String get discard => 'discard';
	@override String get notDiscard => 'not to be discarded';
}

// Path: designsystem.appUpdate
class _TranslationsDesignsystemAppUpdateEn extends TranslationsDesignsystemAppUpdateJa {
	_TranslationsDesignsystemAppUpdateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDesignsystemAppUpdateUpdatePossibleEn updatePossible = _TranslationsDesignsystemAppUpdateUpdatePossibleEn._(_root);
	@override late final _TranslationsDesignsystemAppUpdateForceUpdateEn forceUpdate = _TranslationsDesignsystemAppUpdateForceUpdateEn._(_root);
	@override String get navigateStore => 'Open Store';
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

// Path: designsystem.appUpdate.updatePossible
class _TranslationsDesignsystemAppUpdateUpdatePossibleEn extends TranslationsDesignsystemAppUpdateUpdatePossibleJa {
	_TranslationsDesignsystemAppUpdateUpdatePossibleEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?';
}

// Path: designsystem.appUpdate.forceUpdate
class _TranslationsDesignsystemAppUpdateForceUpdateEn extends TranslationsDesignsystemAppUpdateForceUpdateJa {
	_TranslationsDesignsystemAppUpdateForceUpdateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => 'The version you are using is currently unavailable. \nPlease download a new version from the store.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.yes': return 'Yes';
			case 'common.no': return 'No';
			case 'common.confirmDiscardChanges.title': return 'Discard changes?';
			case 'common.confirmDiscardChanges.message': return 'All changes will be lost';
			case 'common.confirmDiscardChanges.discard': return 'discard';
			case 'common.confirmDiscardChanges.notDiscard': return 'not to be discarded';
			case 'designsystem.appUpdate.updatePossible.message': return 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?';
			case 'designsystem.appUpdate.forceUpdate.message': return 'The version you are using is currently unavailable. \nPlease download a new version from the store.';
			case 'designsystem.appUpdate.navigateStore': return 'Open Store';
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

