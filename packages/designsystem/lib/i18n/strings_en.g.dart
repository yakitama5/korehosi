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
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn.internal(_root);
	late final TranslationsDesignsystemEn designsystem = TranslationsDesignsystemEn.internal(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get yes => 'Yes';
	String get no => 'No';
	late final TranslationsCommonConfirmDiscardChangesEn confirmDiscardChanges = TranslationsCommonConfirmDiscardChangesEn.internal(_root);
}

// Path: designsystem
class TranslationsDesignsystemEn {
	TranslationsDesignsystemEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
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
	String themeColor({required ThemeColor context}) {
		switch (context) {
			case ThemeColor.dynamicColor:
				return 'DynamicColor';
			case ThemeColor.monochrome:
				return 'Monochrome';
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
	late final TranslationsDesignsystemViewLayoutEn viewLayout = TranslationsDesignsystemViewLayoutEn.internal(_root);
	String sortOrder({required SortOrder context}) {
		switch (context) {
			case SortOrder.asc:
				return 'ASC';
			case SortOrder.desc:
				return 'DESC';
		}
	}
	late final TranslationsDesignsystemAppUpdateEn appUpdate = TranslationsDesignsystemAppUpdateEn.internal(_root);
}

// Path: common.confirmDiscardChanges
class TranslationsCommonConfirmDiscardChangesEn {
	TranslationsCommonConfirmDiscardChangesEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Discard changes?';
	String get message => 'All changes will be lost';
	String get discard => 'discard';
	String get notDiscard => 'not to be discarded';
}

// Path: designsystem.viewLayout
class TranslationsDesignsystemViewLayoutEn {
	TranslationsDesignsystemViewLayoutEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Layout';
	String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'Grid';
			case ViewLayout.list:
				return 'List';
		}
	}
}

// Path: designsystem.appUpdate
class TranslationsDesignsystemAppUpdateEn {
	TranslationsDesignsystemAppUpdateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsDesignsystemAppUpdateUpdatePossibleEn updatePossible = TranslationsDesignsystemAppUpdateUpdatePossibleEn.internal(_root);
	late final TranslationsDesignsystemAppUpdateForceUpdateEn forceUpdate = TranslationsDesignsystemAppUpdateForceUpdateEn.internal(_root);
	String get navigateStore => 'Open Store';
}

// Path: designsystem.appUpdate.updatePossible
class TranslationsDesignsystemAppUpdateUpdatePossibleEn {
	TranslationsDesignsystemAppUpdateUpdatePossibleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?';
}

// Path: designsystem.appUpdate.forceUpdate
class TranslationsDesignsystemAppUpdateForceUpdateEn {
	TranslationsDesignsystemAppUpdateForceUpdateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'The version you are using is currently unavailable. \nPlease download a new version from the store.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.yes': return 'Yes';
			case 'common.no': return 'No';
			case 'common.confirmDiscardChanges.title': return 'Discard changes?';
			case 'common.confirmDiscardChanges.message': return 'All changes will be lost';
			case 'common.confirmDiscardChanges.discard': return 'discard';
			case 'common.confirmDiscardChanges.notDiscard': return 'not to be discarded';
			case 'designsystem.uiStyle': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'System';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'designsystem.themeColor': return ({required ThemeColor context}) {
				switch (context) {
					case ThemeColor.dynamicColor:
						return 'DynamicColor';
					case ThemeColor.monochrome:
						return 'Monochrome';
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
			case 'designsystem.themeMode': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'System';
					case ThemeMode.light:
						return 'Light';
					case ThemeMode.dark:
						return 'Dark';
				}
			};
			case 'designsystem.viewLayout.name': return 'Layout';
			case 'designsystem.viewLayout.typeName': return ({required ViewLayout context}) {
				switch (context) {
					case ViewLayout.grid:
						return 'Grid';
					case ViewLayout.list:
						return 'List';
				}
			};
			case 'designsystem.sortOrder': return ({required SortOrder context}) {
				switch (context) {
					case SortOrder.asc:
						return 'ASC';
					case SortOrder.desc:
						return 'DESC';
				}
			};
			case 'designsystem.appUpdate.updatePossible.message': return 'A new version has been released.\nBy updating, you can enjoy new features.\nWould you like to update?';
			case 'designsystem.appUpdate.forceUpdate.message': return 'The version you are using is currently unavailable. \nPlease download a new version from the store.';
			case 'designsystem.appUpdate.navigateStore': return 'Open Store';
			default: return null;
		}
	}
}

