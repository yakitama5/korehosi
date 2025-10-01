///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:cores_domain/core.dart';
import 'package:cores_domain/designsystem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsCommonJa common = _TranslationsCommonJa._(_root);
	@override late final _TranslationsDesignsystemJa designsystem = _TranslationsDesignsystemJa._(_root);
}

// Path: common
class _TranslationsCommonJa extends TranslationsCommonEn {
	_TranslationsCommonJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get yes => 'はい';
	@override String get no => 'いいえ';
	@override late final _TranslationsCommonConfirmDiscardChangesJa confirmDiscardChanges = _TranslationsCommonConfirmDiscardChangesJa._(_root);
}

// Path: designsystem
class _TranslationsDesignsystemJa extends TranslationsDesignsystemEn {
	_TranslationsDesignsystemJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String uiStyle({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'システム設定';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}
	@override String themeColor({required ThemeColor context}) {
		switch (context) {
			case ThemeColor.dynamicColor:
				return 'ダイナミックカラー';
			case ThemeColor.monochrome:
				return 'モノクロ';
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
	@override String themeMode({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'システムテーマ';
			case ThemeMode.light:
				return 'ライトテーマ';
			case ThemeMode.dark:
				return 'ダークテーマ';
		}
	}
	@override late final _TranslationsDesignsystemViewLayoutJa viewLayout = _TranslationsDesignsystemViewLayoutJa._(_root);
	@override String sortOrder({required SortOrder context}) {
		switch (context) {
			case SortOrder.asc:
				return '昇順';
			case SortOrder.desc:
				return '降順';
		}
	}
	@override late final _TranslationsDesignsystemAppUpdateJa appUpdate = _TranslationsDesignsystemAppUpdateJa._(_root);
}

// Path: common.confirmDiscardChanges
class _TranslationsCommonConfirmDiscardChangesJa extends TranslationsCommonConfirmDiscardChangesEn {
	_TranslationsCommonConfirmDiscardChangesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '変更を破棄しますか？';
	@override String get message => 'すべての変更は失われます';
	@override String get discard => '破棄';
	@override String get notDiscard => '破棄しない';
}

// Path: designsystem.viewLayout
class _TranslationsDesignsystemViewLayoutJa extends TranslationsDesignsystemViewLayoutEn {
	_TranslationsDesignsystemViewLayoutJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '表示形式';
	@override String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'グリッド表示';
			case ViewLayout.list:
				return 'リスト表示';
		}
	}
}

// Path: designsystem.appUpdate
class _TranslationsDesignsystemAppUpdateJa extends TranslationsDesignsystemAppUpdateEn {
	_TranslationsDesignsystemAppUpdateJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDesignsystemAppUpdateUpdatePossibleJa updatePossible = _TranslationsDesignsystemAppUpdateUpdatePossibleJa._(_root);
	@override late final _TranslationsDesignsystemAppUpdateForceUpdateJa forceUpdate = _TranslationsDesignsystemAppUpdateForceUpdateJa._(_root);
	@override String get navigateStore => 'ストアを開く';
}

// Path: designsystem.appUpdate.updatePossible
class _TranslationsDesignsystemAppUpdateUpdatePossibleJa extends TranslationsDesignsystemAppUpdateUpdatePossibleEn {
	_TranslationsDesignsystemAppUpdateUpdatePossibleJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get message => '新しいバージョンが公開されています。\nアップデートを行うと、新しい機能をご利用いただけます。\nアップデートを行いますか？';
}

// Path: designsystem.appUpdate.forceUpdate
class _TranslationsDesignsystemAppUpdateForceUpdateJa extends TranslationsDesignsystemAppUpdateForceUpdateEn {
	_TranslationsDesignsystemAppUpdateForceUpdateJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get message => 'ご利用のバージョンは現在ご利用出来ません。\nストアから新しいバージョンをご利用下さい。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.yes': return 'はい';
			case 'common.no': return 'いいえ';
			case 'common.confirmDiscardChanges.title': return '変更を破棄しますか？';
			case 'common.confirmDiscardChanges.message': return 'すべての変更は失われます';
			case 'common.confirmDiscardChanges.discard': return '破棄';
			case 'common.confirmDiscardChanges.notDiscard': return '破棄しない';
			case 'designsystem.uiStyle': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'システム設定';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'designsystem.themeColor': return ({required ThemeColor context}) {
				switch (context) {
					case ThemeColor.dynamicColor:
						return 'ダイナミックカラー';
					case ThemeColor.monochrome:
						return 'モノクロ';
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
			};
			case 'designsystem.themeMode': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'システムテーマ';
					case ThemeMode.light:
						return 'ライトテーマ';
					case ThemeMode.dark:
						return 'ダークテーマ';
				}
			};
			case 'designsystem.viewLayout.name': return '表示形式';
			case 'designsystem.viewLayout.typeName': return ({required ViewLayout context}) {
				switch (context) {
					case ViewLayout.grid:
						return 'グリッド表示';
					case ViewLayout.list:
						return 'リスト表示';
				}
			};
			case 'designsystem.sortOrder': return ({required SortOrder context}) {
				switch (context) {
					case SortOrder.asc:
						return '昇順';
					case SortOrder.desc:
						return '降順';
				}
			};
			case 'designsystem.appUpdate.updatePossible.message': return '新しいバージョンが公開されています。\nアップデートを行うと、新しい機能をご利用いただけます。\nアップデートを行いますか？';
			case 'designsystem.appUpdate.forceUpdate.message': return 'ご利用のバージョンは現在ご利用出来ません。\nストアから新しいバージョンをご利用下さい。';
			case 'designsystem.appUpdate.navigateStore': return 'ストアを開く';
			default: return null;
		}
	}
}

