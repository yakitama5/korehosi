///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

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
	@override late final _TranslationsAnalyzeEn analyze = _TranslationsAnalyzeEn._(_root);
	@override late final _TranslationsGroupEn group = _TranslationsGroupEn._(_root);
	@override late final _TranslationsItemEn item = _TranslationsItemEn._(_root);
	@override late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
	@override late final _TranslationsUserEn user = _TranslationsUserEn._(_root);
}

// Path: analyze
class _TranslationsAnalyzeEn extends TranslationsAnalyzeJa {
	_TranslationsAnalyzeEn._(TranslationsEn root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsSettingsWishReminderSettingsPageEn wishReminderSettingsPage = _TranslationsSettingsWishReminderSettingsPageEn._(_root);
	@override late final _TranslationsSettingsAccountPageEn accountPage = _TranslationsSettingsAccountPageEn._(_root);
}

// Path: user
class _TranslationsUserEn extends TranslationsUserJa {
	_TranslationsUserEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUserProfilePageEn profilePage = _TranslationsUserProfilePageEn._(_root);
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

// Path: settings.wishReminderSettingsPage
class _TranslationsSettingsWishReminderSettingsPageEn extends TranslationsSettingsWishReminderSettingsPageJa {
	_TranslationsSettingsWishReminderSettingsPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wish-date reminders';
	@override String get enabled => 'Receive reminders';
	@override String get description => 'Turn this on only when you want reminder notifications';
	@override late final _TranslationsSettingsWishReminderSettingsPageTimingEn timing = _TranslationsSettingsWishReminderSettingsPageTimingEn._(_root);
	@override late final _TranslationsSettingsWishReminderSettingsPageAudienceEn audience = _TranslationsSettingsWishReminderSettingsPageAudienceEn._(_root);
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

// Path: user.profilePage
class _TranslationsUserProfilePageEn extends TranslationsUserProfilePageJa {
	_TranslationsUserProfilePageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get ageGroupCannotBeChanged => 'Age group can\'t be changed after registration.';
}

// Path: settings.settingsPage.account
class _TranslationsSettingsSettingsPageAccountEn extends TranslationsSettingsSettingsPageAccountJa {
	_TranslationsSettingsSettingsPageAccountEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get head => 'Account';
	@override String get profile => 'Profile';
	@override String get group => 'Groups';
	@override String get account => 'Account';
	@override late final _TranslationsSettingsSettingsPageAccountPushNotificationEn pushNotification = _TranslationsSettingsSettingsPageAccountPushNotificationEn._(_root);
	@override late final _TranslationsSettingsSettingsPageAccountWishReminderEn wishReminder = _TranslationsSettingsSettingsPageAccountWishReminderEn._(_root);
}

// Path: settings.settingsPage.layout
class _TranslationsSettingsSettingsPageLayoutEn extends TranslationsSettingsSettingsPageLayoutJa {
	_TranslationsSettingsSettingsPageLayoutEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Layout';
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
	@override String get developerX => 'Developer';
	@override String get privacyPolicy => 'PrivacyPolicy';
	@override String get license => 'License';
}

// Path: settings.wishReminderSettingsPage.timing
class _TranslationsSettingsWishReminderSettingsPageTimingEn extends TranslationsSettingsWishReminderSettingsPageTimingJa {
	_TranslationsSettingsWishReminderSettingsPageTimingEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timing';
	@override String get sameDay => 'Same day';
	@override String get dayBefore => 'One day before';
	@override String get weekBefore => 'One week before';
}

// Path: settings.wishReminderSettingsPage.audience
class _TranslationsSettingsWishReminderSettingsPageAudienceEn extends TranslationsSettingsWishReminderSettingsPageAudienceJa {
	_TranslationsSettingsWishReminderSettingsPageAudienceEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Audience';
	@override String get everyone => 'Include children';
	@override String get description => 'When off, reminders are delivered to adults only';
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

// Path: settings.settingsPage.account.pushNotification
class _TranslationsSettingsSettingsPageAccountPushNotificationEn extends TranslationsSettingsSettingsPageAccountPushNotificationJa {
	_TranslationsSettingsSettingsPageAccountPushNotificationEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Push notifications';
	@override String get caption => 'Receive notifications when items are added in your groups';
}

// Path: settings.settingsPage.account.wishReminder
class _TranslationsSettingsSettingsPageAccountWishReminderEn extends TranslationsSettingsSettingsPageAccountWishReminderJa {
	_TranslationsSettingsSettingsPageAccountWishReminderEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wish-date reminders';
	@override String get caption => 'Receive a notification before a wish date';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		return switch (path) {
			'analyze.hoge' => 'hoge',
			'group.hoge' => 'hoge',
			'item.hoge' => 'hoge',
			'settings.settingsPage.title' => 'Settings',
			'settings.settingsPage.account.head' => 'Account',
			'settings.settingsPage.account.profile' => 'Profile',
			'settings.settingsPage.account.group' => 'Groups',
			'settings.settingsPage.account.account' => 'Account',
			'settings.settingsPage.account.pushNotification.title' => 'Push notifications',
			'settings.settingsPage.account.pushNotification.caption' => 'Receive notifications when items are added in your groups',
			'settings.settingsPage.account.wishReminder.title' => 'Wish-date reminders',
			'settings.settingsPage.account.wishReminder.caption' => 'Receive a notification before a wish date',
			'settings.settingsPage.layout.title' => 'Layout',
			'settings.settingsPage.layout.uiStyle' => 'UI Style',
			'settings.settingsPage.layout.themeMode' => 'ThemeMode',
			'settings.settingsPage.layout.colorTheme' => 'Colors',
			'settings.settingsPage.help.head' => 'Help',
			'settings.settingsPage.help.howToUse' => 'HowToUse',
			'settings.settingsPage.help.contactUs' => 'Contact us',
			'settings.settingsPage.help.developerX' => 'Developer',
			'settings.settingsPage.help.privacyPolicy' => 'PrivacyPolicy',
			'settings.settingsPage.help.license' => 'License',
			'settings.wishReminderSettingsPage.title' => 'Wish-date reminders',
			'settings.wishReminderSettingsPage.enabled' => 'Receive reminders',
			'settings.wishReminderSettingsPage.description' => 'Turn this on only when you want reminder notifications',
			'settings.wishReminderSettingsPage.timing.title' => 'Timing',
			'settings.wishReminderSettingsPage.timing.sameDay' => 'Same day',
			'settings.wishReminderSettingsPage.timing.dayBefore' => 'One day before',
			'settings.wishReminderSettingsPage.timing.weekBefore' => 'One week before',
			'settings.wishReminderSettingsPage.audience.title' => 'Audience',
			'settings.wishReminderSettingsPage.audience.everyone' => 'Include children',
			'settings.wishReminderSettingsPage.audience.description' => 'When off, reminders are delivered to adults only',
			'settings.accountPage.title' => 'Account',
			'settings.accountPage.link.head' => 'Account link',
			'settings.accountPage.link.google' => 'Google',
			'settings.accountPage.link.apple' => 'Apple',
			'settings.accountPage.other.head' => 'Other',
			'settings.accountPage.other.logout' => 'Logout',
			'settings.accountPage.other.leave' => 'Leave',
			'settings.accountPage.leaveConfirmDialog.title' => 'Leave?',
			'settings.accountPage.leaveConfirmDialog.body' => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.',
			'user.profilePage.ageGroupCannotBeChanged' => 'Age group can\'t be changed after registration.',
			'user.hoge' => 'hoge',
			_ => null,
		};
	}
}

