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
			default: return null;
		}
	}
}

