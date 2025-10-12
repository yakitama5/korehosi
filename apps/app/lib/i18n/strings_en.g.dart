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
	@override late final _TranslationsAppEn app = _TranslationsAppEn._(_root);
	@override late final _TranslationsGroupEn group = _TranslationsGroupEn._(_root);
	@override late final _TranslationsItemEn item = _TranslationsItemEn._(_root);
	@override late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
	@override late final _TranslationsUserEn user = _TranslationsUserEn._(_root);
}

// Path: app
class _TranslationsAppEn extends TranslationsAppJa {
	_TranslationsAppEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

// Path: group
class _TranslationsGroupEn extends TranslationsGroupJa {
	_TranslationsGroupEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

// Path: item
class _TranslationsItemEn extends TranslationsItemJa {
	_TranslationsItemEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

// Path: settings
class _TranslationsSettingsEn extends TranslationsSettingsJa {
	_TranslationsSettingsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsSettingsPageEn settingsPage = _TranslationsSettingsSettingsPageEn._(_root);
	@override late final _TranslationsSettingsAccountPageEn accountPage = _TranslationsSettingsAccountPageEn._(_root);
}

// Path: user
class _TranslationsUserEn extends TranslationsUserJa {
	_TranslationsUserEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hoge => 'hoge';
}

// Path: settings.settingsPage
class _TranslationsSettingsSettingsPageEn extends TranslationsSettingsSettingsPageJa {
	_TranslationsSettingsSettingsPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override late final _TranslationsSettingsSettingsPageAccountEn account = _TranslationsSettingsSettingsPageAccountEn._(_root);
	@override late final _TranslationsSettingsSettingsPageLayoutEn layout = _TranslationsSettingsSettingsPageLayoutEn._(_root);
	@override late final _TranslationsSettingsSettingsPageHelpEn help = _TranslationsSettingsSettingsPageHelpEn._(_root);
}

// Path: settings.accountPage
class _TranslationsSettingsAccountPageEn extends TranslationsSettingsAccountPageJa {
	_TranslationsSettingsAccountPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Account';
	@override late final _TranslationsSettingsAccountPageLinkEn link = _TranslationsSettingsAccountPageLinkEn._(_root);
	@override late final _TranslationsSettingsAccountPageOtherEn other = _TranslationsSettingsAccountPageOtherEn._(_root);
	@override late final _TranslationsSettingsAccountPageLeaveConfirmDialogEn leaveConfirmDialog = _TranslationsSettingsAccountPageLeaveConfirmDialogEn._(_root);
}

// Path: settings.settingsPage.account
class _TranslationsSettingsSettingsPageAccountEn extends TranslationsSettingsSettingsPageAccountJa {
	_TranslationsSettingsSettingsPageAccountEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Account';
	@override String get account => 'Account';
}

// Path: settings.settingsPage.layout
class _TranslationsSettingsSettingsPageLayoutEn extends TranslationsSettingsSettingsPageLayoutJa {
	_TranslationsSettingsSettingsPageLayoutEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get haed => 'Layout';
	@override String get uiStyle => 'UI Style';
	@override String get themeMode => 'ThemeMode';
	@override String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class _TranslationsSettingsSettingsPageHelpEn extends TranslationsSettingsSettingsPageHelpJa {
	_TranslationsSettingsSettingsPageHelpEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Help';
	@override String get howToUse => 'HowToUse';
	@override String get contactUs => 'Contact us';
	@override String get developperTwitter => 'Developper';
	@override String get privacyPolicy => 'PrivacyPolicy';
	@override String get licencse => 'License';
}

// Path: settings.accountPage.link
class _TranslationsSettingsAccountPageLinkEn extends TranslationsSettingsAccountPageLinkJa {
	_TranslationsSettingsAccountPageLinkEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Account link';
	@override String get google => 'Google';
	@override String get apple => 'Apple';
}

// Path: settings.accountPage.other
class _TranslationsSettingsAccountPageOtherEn extends TranslationsSettingsAccountPageOtherJa {
	_TranslationsSettingsAccountPageOtherEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Other';
	@override String get logout => 'Logout';
	@override String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class _TranslationsSettingsAccountPageLeaveConfirmDialogEn extends TranslationsSettingsAccountPageLeaveConfirmDialogJa {
	_TranslationsSettingsAccountPageLeaveConfirmDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leave?';
	@override String get body => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.hoge': return 'hoge';
			case 'group.hoge': return 'hoge';
			case 'item.hoge': return 'hoge';
			case 'settings.settingsPage.title': return 'Settings';
			case 'settings.settingsPage.account.head': return 'Account';
			case 'settings.settingsPage.account.account': return 'Account';
			case 'settings.settingsPage.layout.haed': return 'Layout';
			case 'settings.settingsPage.layout.uiStyle': return 'UI Style';
			case 'settings.settingsPage.layout.themeMode': return 'ThemeMode';
			case 'settings.settingsPage.layout.colorTheme': return 'Colors';
			case 'settings.settingsPage.help.head': return 'Help';
			case 'settings.settingsPage.help.howToUse': return 'HowToUse';
			case 'settings.settingsPage.help.contactUs': return 'Contact us';
			case 'settings.settingsPage.help.developperTwitter': return 'Developper';
			case 'settings.settingsPage.help.privacyPolicy': return 'PrivacyPolicy';
			case 'settings.settingsPage.help.licencse': return 'License';
			case 'settings.accountPage.title': return 'Account';
			case 'settings.accountPage.link.head': return 'Account link';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'Other';
			case 'settings.accountPage.other.logout': return 'Logout';
			case 'settings.accountPage.other.leave': return 'Leave';
			case 'settings.accountPage.leaveConfirmDialog.title': return 'Leave?';
			case 'settings.accountPage.leaveConfirmDialog.body': return 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
			case 'user.hoge': return 'hoge';
			default: return null;
		}
	}
}

