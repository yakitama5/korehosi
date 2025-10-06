///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn.internal(_root);
	late final TranslationsExceptionsEn exceptions = TranslationsExceptionsEn.internal(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '<Deleted User>.'
	String get deletedUser => '<Deleted User>.';

	/// en: '<Unset>'
	String get unset => '<Unset>';

	/// en: '${user:String}from${group:String} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url:String}'
	String groupShareText({required String user, required String group, required String url}) => '${user}from${group} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url}';

	/// en: '${name:String}added what you want!'
	String notificationAddItemTitle({required String name}) => '${name}added what you want!';

	/// en: '${name:String}added what you want!'
	String notificationAddItemBody({required String name}) => '${name}added what you want!';

	late final TranslationsAppUserEn user = TranslationsAppUserEn.internal(_root);
	late final TranslationsAppGroupEn group = TranslationsAppGroupEn.internal(_root);
}

// Path: exceptions
class TranslationsExceptionsEn {
	TranslationsExceptionsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsExceptionsJoinGroupPolicyEn joinGroupPolicy = TranslationsExceptionsJoinGroupPolicyEn.internal(_root);
	late final TranslationsExceptionsItemRegistrationPolicyEn itemRegistrationPolicy = TranslationsExceptionsItemRegistrationPolicyEn.internal(_root);
}

// Path: app.user
class TranslationsAppUserEn {
	TranslationsAppUserEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '名無し'
	String get noname => '名無し';
}

// Path: app.group
class TranslationsAppGroupEn {
	TranslationsAppGroupEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '${userName: String}のグループ'
	String templateName({required String userName}) => '${userName}のグループ';
}

// Path: exceptions.joinGroupPolicy
class TranslationsExceptionsJoinGroupPolicyEn {
	TranslationsExceptionsJoinGroupPolicyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'すでに参加しています。'
	String get joinedGroup => 'すでに参加しています。';

	/// en: '招待リンクの有効期限が切れています。'
	String get expired => '招待リンクの有効期限が切れています。';

	/// en: '認証エラーが発生しました。'
	String get notAuth => '認証エラーが発生しました。';

	/// en: 'グループの参加上限(5件)に達しました。'
	String get limitOver => 'グループの参加上限(5件)に達しました。';

	/// en: '招待リンクが正しくありません。'
	String get invalidShareLink => '招待リンクが正しくありません。';
}

// Path: exceptions.itemRegistrationPolicy
class TranslationsExceptionsItemRegistrationPolicyEn {
	TranslationsExceptionsItemRegistrationPolicyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '登録数の上限に達しました。 購入済のものを削除するか、プレミアムプランに変更して下さい。'
	String get limitOver => '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.deletedUser': return '<Deleted User>.';
			case 'app.unset': return '<Unset>';
			case 'app.groupShareText': return ({required String user, required String group, required String url}) => '${user}from${group} You have been invited to \You can join the Wishlist group by clicking the URL below or scanning the QR code.${url}';
			case 'app.notificationAddItemTitle': return ({required String name}) => '${name}added what you want!';
			case 'app.notificationAddItemBody': return ({required String name}) => '${name}added what you want!';
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

