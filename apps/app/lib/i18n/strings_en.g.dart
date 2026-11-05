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
class TranslationsEn extends Translations
    with BaseTranslations<AppLocale, Translations> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEn({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       _meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.en,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ) {
    _meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  final TranslationMetadata<AppLocale, Translations> _meta;
  @override
  TranslationMetadata<AppLocale, Translations> get $meta => _meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => _meta.getTranslation(key) ?? super[key];

  late final TranslationsEn _root = this; // ignore: unused_field

  @override
  TranslationsEn $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsEn(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _Translations$analyze$en analyze = _Translations$analyze$en._(
    _root,
  );
  @override
  late final _Translations$group$en group = _Translations$group$en._(_root);
  @override
  late final _Translations$item$en item = _Translations$item$en._(_root);
  @override
  late final _Translations$settings$en settings = _Translations$settings$en._(
    _root,
  );
  @override
  late final _Translations$user$en user = _Translations$user$en._(_root);
}

// Path: analyze
class _Translations$analyze$en extends Translations$analyze$ja {
  _Translations$analyze$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get hoge => 'hoge';
}

// Path: group
class _Translations$group$en extends Translations$group$ja {
  _Translations$group$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get hoge => 'hoge';
}

// Path: item
class _Translations$item$en extends Translations$item$ja {
  _Translations$item$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get hoge => 'hoge';
}

// Path: settings
class _Translations$settings$en extends Translations$settings$ja {
  _Translations$settings$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _Translations$settings$settingsPage$en settingsPage =
      _Translations$settings$settingsPage$en._(_root);
  @override
  late final _Translations$settings$wishReminderSettingsPage$en
  wishReminderSettingsPage =
      _Translations$settings$wishReminderSettingsPage$en._(_root);
  @override
  late final _Translations$settings$accountPage$en accountPage =
      _Translations$settings$accountPage$en._(_root);
}

// Path: user
class _Translations$user$en extends Translations$user$ja {
  _Translations$user$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get hoge => 'hoge';
}

// Path: settings.settingsPage
class _Translations$settings$settingsPage$en
    extends Translations$settings$settingsPage$ja {
  _Translations$settings$settingsPage$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Settings';
  @override
  late final _Translations$settings$settingsPage$account$en account =
      _Translations$settings$settingsPage$account$en._(_root);
  @override
  late final _Translations$settings$settingsPage$layout$en layout =
      _Translations$settings$settingsPage$layout$en._(_root);
  @override
  late final _Translations$settings$settingsPage$help$en help =
      _Translations$settings$settingsPage$help$en._(_root);
}

// Path: settings.wishReminderSettingsPage
class _Translations$settings$wishReminderSettingsPage$en
    extends Translations$settings$wishReminderSettingsPage$ja {
  _Translations$settings$wishReminderSettingsPage$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wish-date reminders';
  @override
  String get enabled => 'Receive reminders';
  @override
  String get description =>
      'Turn this on only when you want reminder notifications';
  @override
  late final _Translations$settings$wishReminderSettingsPage$timing$en timing =
      _Translations$settings$wishReminderSettingsPage$timing$en._(_root);
  @override
  late final _Translations$settings$wishReminderSettingsPage$audience$en
  audience = _Translations$settings$wishReminderSettingsPage$audience$en._(
    _root,
  );
}

// Path: settings.accountPage
class _Translations$settings$accountPage$en
    extends Translations$settings$accountPage$ja {
  _Translations$settings$accountPage$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Account';
  @override
  late final _Translations$settings$accountPage$link$en link =
      _Translations$settings$accountPage$link$en._(_root);
  @override
  late final _Translations$settings$accountPage$other$en other =
      _Translations$settings$accountPage$other$en._(_root);
  @override
  late final _Translations$settings$accountPage$leaveConfirmDialog$en
  leaveConfirmDialog =
      _Translations$settings$accountPage$leaveConfirmDialog$en._(_root);
}

// Path: settings.settingsPage.account
class _Translations$settings$settingsPage$account$en
    extends Translations$settings$settingsPage$account$ja {
  _Translations$settings$settingsPage$account$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get head => 'Account';
  @override
  String get profile => 'Profile';
  @override
  String get group => 'Groups';
  @override
  String get account => 'Account';
  @override
  late final _Translations$settings$settingsPage$account$pushNotification$en
  pushNotification =
      _Translations$settings$settingsPage$account$pushNotification$en._(_root);
  @override
  late final _Translations$settings$settingsPage$account$wishReminder$en
  wishReminder = _Translations$settings$settingsPage$account$wishReminder$en._(
    _root,
  );
}

// Path: settings.settingsPage.layout
class _Translations$settings$settingsPage$layout$en
    extends Translations$settings$settingsPage$layout$ja {
  _Translations$settings$settingsPage$layout$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Layout';
  @override
  String get uiStyle => 'UI Style';
  @override
  String get themeMode => 'ThemeMode';
  @override
  String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class _Translations$settings$settingsPage$help$en
    extends Translations$settings$settingsPage$help$ja {
  _Translations$settings$settingsPage$help$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get head => 'Help';
  @override
  String get howToUse => 'HowToUse';
  @override
  String get contactUs => 'Contact us';
  @override
  String get developerX => 'Developer';
  @override
  String get privacyPolicy => 'PrivacyPolicy';
  @override
  String get license => 'License';
}

// Path: settings.wishReminderSettingsPage.timing
class _Translations$settings$wishReminderSettingsPage$timing$en
    extends Translations$settings$wishReminderSettingsPage$timing$ja {
  _Translations$settings$wishReminderSettingsPage$timing$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Timing';
  @override
  String get sameDay => 'Same day';
  @override
  String get dayBefore => 'One day before';
  @override
  String get weekBefore => 'One week before';
}

// Path: settings.wishReminderSettingsPage.audience
class _Translations$settings$wishReminderSettingsPage$audience$en
    extends Translations$settings$wishReminderSettingsPage$audience$ja {
  _Translations$settings$wishReminderSettingsPage$audience$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Audience';
  @override
  String get everyone => 'Include children';
  @override
  String get description => 'When off, reminders are delivered to adults only';
}

// Path: settings.accountPage.link
class _Translations$settings$accountPage$link$en
    extends Translations$settings$accountPage$link$ja {
  _Translations$settings$accountPage$link$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get head => 'Account link';
  @override
  String get google => 'Google';
  @override
  String get apple => 'Apple';
}

// Path: settings.accountPage.other
class _Translations$settings$accountPage$other$en
    extends Translations$settings$accountPage$other$ja {
  _Translations$settings$accountPage$other$en._(TranslationsEn root)
    : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get head => 'Other';
  @override
  String get logout => 'Logout';
  @override
  String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class _Translations$settings$accountPage$leaveConfirmDialog$en
    extends Translations$settings$accountPage$leaveConfirmDialog$ja {
  _Translations$settings$accountPage$leaveConfirmDialog$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Leave?';
  @override
  String get body =>
      'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
}

// Path: settings.settingsPage.account.pushNotification
class _Translations$settings$settingsPage$account$pushNotification$en
    extends Translations$settings$settingsPage$account$pushNotification$ja {
  _Translations$settings$settingsPage$account$pushNotification$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Push notifications';
  @override
  String get caption =>
      'Receive notifications when items are added in your groups';
}

// Path: settings.settingsPage.account.wishReminder
class _Translations$settings$settingsPage$account$wishReminder$en
    extends Translations$settings$settingsPage$account$wishReminder$ja {
  _Translations$settings$settingsPage$account$wishReminder$en._(
    TranslationsEn root,
  ) : this._root = root,
      super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wish-date reminders';
  @override
  String get caption => 'Receive a notification before a wish date';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
  dynamic _flatMapFunction(String path) {
    return switch (path) {
      'analyze.hoge' => 'hoge',
      'group.hoge' => 'hoge',
      'item.hoge' => 'hoge',
      'settings.settingsPage.title' => 'Settings',
      'settings.settingsPage.account.head' => 'Account',
      'settings.settingsPage.account.profile' => 'Profile',
      'settings.settingsPage.account.group' => 'Groups',
      'settings.settingsPage.account.account' => 'Account',
      'settings.settingsPage.account.pushNotification.title' =>
        'Push notifications',
      'settings.settingsPage.account.pushNotification.caption' =>
        'Receive notifications when items are added in your groups',
      'settings.settingsPage.account.wishReminder.title' =>
        'Wish-date reminders',
      'settings.settingsPage.account.wishReminder.caption' =>
        'Receive a notification before a wish date',
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
      'settings.wishReminderSettingsPage.description' =>
        'Turn this on only when you want reminder notifications',
      'settings.wishReminderSettingsPage.timing.title' => 'Timing',
      'settings.wishReminderSettingsPage.timing.sameDay' => 'Same day',
      'settings.wishReminderSettingsPage.timing.dayBefore' => 'One day before',
      'settings.wishReminderSettingsPage.timing.weekBefore' =>
        'One week before',
      'settings.wishReminderSettingsPage.audience.title' => 'Audience',
      'settings.wishReminderSettingsPage.audience.everyone' =>
        'Include children',
      'settings.wishReminderSettingsPage.audience.description' =>
        'When off, reminders are delivered to adults only',
      'settings.accountPage.title' => 'Account',
      'settings.accountPage.link.head' => 'Account link',
      'settings.accountPage.link.google' => 'Google',
      'settings.accountPage.link.apple' => 'Apple',
      'settings.accountPage.other.head' => 'Other',
      'settings.accountPage.other.logout' => 'Logout',
      'settings.accountPage.other.leave' => 'Leave',
      'settings.accountPage.leaveConfirmDialog.title' => 'Leave?',
      'settings.accountPage.leaveConfirmDialog.body' => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.',
      'user.hoge' => 'hoge',
      _ => null,
    };
  }
}
