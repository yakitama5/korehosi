///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element
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
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsGroupJa group = TranslationsGroupJa.internal(_root);
	late final TranslationsItemJa item = TranslationsItemJa.internal(_root);
	late final TranslationsUserJa user = TranslationsUserJa.internal(_root);
}

// Path: group
class TranslationsGroupJa {
	TranslationsGroupJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${user:String}さんから${group:String}へ招待されました。 下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます ${url:String}'
	String groupShareText({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}';

	/// ja: '${userName: String}のグループ'
	String initialGroupName({required String userName}) => '${userName}のグループ';
}

// Path: item
class TranslationsItemJa {
	TranslationsItemJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${name:String}さんがほしいものを追加しました！'
	String notificationAddItemTitle({required String name}) => '${name}さんがほしいものを追加しました！';

	/// ja: '${name:String}さんがほしいものを追加しました！'
	String notificationAddItemBody({required String name}) => '${name}さんがほしいものを追加しました！';
}

// Path: user
class TranslationsUserJa {
	TranslationsUserJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '<削除済ユーザー>'
	String get deletedUser => '<削除済ユーザー>';

	/// ja: '<未設定>'
	String get unset => '<未設定>';

	late final TranslationsUserUserJa user = TranslationsUserUserJa.internal(_root);
}

// Path: user.user
class TranslationsUserUserJa {
	TranslationsUserUserJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '名無し'
	String get noname => '名無し';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'group.groupShareText' => ({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}',
			'group.initialGroupName' => ({required String userName}) => '${userName}のグループ',
			'item.notificationAddItemTitle' => ({required String name}) => '${name}さんがほしいものを追加しました！',
			'item.notificationAddItemBody' => ({required String name}) => '${name}さんがほしいものを追加しました！',
			'user.deletedUser' => '<削除済ユーザー>',
			'user.unset' => '<未設定>',
			'user.user.noname' => '名無し',
			_ => null,
		};
	}
}

