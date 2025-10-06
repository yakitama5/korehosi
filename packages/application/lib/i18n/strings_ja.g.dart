///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:packages_domain/user.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppJa app = _TranslationsAppJa._(_root);
	@override late final _TranslationsExceptionsJa exceptions = _TranslationsExceptionsJa._(_root);
}

// Path: app
class _TranslationsAppJa extends TranslationsAppEn {
	_TranslationsAppJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get deletedUser => '<削除済ユーザー>';
	@override String get unset => '<未設定>';
	@override String groupShareText({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}';
	@override String notificationAddItemTitle({required String name}) => '${name}さんがほしいものを追加しました！';
	@override String notificationAddItemBody({required String name}) => '${name}さんがほしいものを追加しました！';
	@override late final _TranslationsAppUserJa user = _TranslationsAppUserJa._(_root);
	@override late final _TranslationsAppGroupJa group = _TranslationsAppGroupJa._(_root);
}

// Path: exceptions
class _TranslationsExceptionsJa extends TranslationsExceptionsEn {
	_TranslationsExceptionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsExceptionsJoinGroupPolicyJa joinGroupPolicy = _TranslationsExceptionsJoinGroupPolicyJa._(_root);
	@override late final _TranslationsExceptionsItemRegistrationPolicyJa itemRegistrationPolicy = _TranslationsExceptionsItemRegistrationPolicyJa._(_root);
}

// Path: app.user
class _TranslationsAppUserJa extends TranslationsAppUserEn {
	_TranslationsAppUserJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noname => '名無し';
}

// Path: app.group
class _TranslationsAppGroupJa extends TranslationsAppGroupEn {
	_TranslationsAppGroupJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String templateName({required String userName}) => '${userName}のグループ';
}

// Path: exceptions.joinGroupPolicy
class _TranslationsExceptionsJoinGroupPolicyJa extends TranslationsExceptionsJoinGroupPolicyEn {
	_TranslationsExceptionsJoinGroupPolicyJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get joinedGroup => 'すでに参加しています。';
	@override String get expired => '招待リンクの有効期限が切れています。';
	@override String get notAuth => '認証エラーが発生しました。';
	@override String get limitOver => 'グループの参加上限(5件)に達しました。';
	@override String get invalidShareLink => '招待リンクが正しくありません。';
}

// Path: exceptions.itemRegistrationPolicy
class _TranslationsExceptionsItemRegistrationPolicyJa extends TranslationsExceptionsItemRegistrationPolicyEn {
	_TranslationsExceptionsItemRegistrationPolicyJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get limitOver => '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.deletedUser': return '<削除済ユーザー>';
			case 'app.unset': return '<未設定>';
			case 'app.groupShareText': return ({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}';
			case 'app.notificationAddItemTitle': return ({required String name}) => '${name}さんがほしいものを追加しました！';
			case 'app.notificationAddItemBody': return ({required String name}) => '${name}さんがほしいものを追加しました！';
			case 'app.user.noname': return '名無し';
			case 'app.group.templateName': return ({required String userName}) => '${userName}のグループ';
			case 'exceptions.joinGroupPolicy.joinedGroup': return 'すでに参加しています。';
			case 'exceptions.joinGroupPolicy.expired': return '招待リンクの有効期限が切れています。';
			case 'exceptions.joinGroupPolicy.notAuth': return '認証エラーが発生しました。';
			case 'exceptions.joinGroupPolicy.limitOver': return 'グループの参加上限(5件)に達しました。';
			case 'exceptions.joinGroupPolicy.invalidShareLink': return '招待リンクが正しくありません。';
			case 'exceptions.itemRegistrationPolicy.limitOver': return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
			default: return null;
		}
	}
}

