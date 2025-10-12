///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

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
	late final TranslationsAppJa app = TranslationsAppJa.internal(_root);
	late final TranslationsSettingsJa settings = TranslationsSettingsJa.internal(_root);
	late final TranslationsUserJa user = TranslationsUserJa.internal(_root);
}

// Path: app
class TranslationsAppJa {
	TranslationsAppJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'hoge'
	String get hoge => 'hoge';
}

// Path: settings
class TranslationsSettingsJa {
	TranslationsSettingsJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsSettingsPageJa settingsPage = TranslationsSettingsSettingsPageJa.internal(_root);
	late final TranslationsSettingsAccountPageJa accountPage = TranslationsSettingsAccountPageJa.internal(_root);
	late final TranslationsSettingsAccountLinkPageJa accountLinkPage = TranslationsSettingsAccountLinkPageJa.internal(_root);
}

// Path: user
class TranslationsUserJa {
	TranslationsUserJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserWelcomePageJa welcomePage = TranslationsUserWelcomePageJa.internal(_root);
	late final TranslationsUserProfilePageJa profilePage = TranslationsUserProfilePageJa.internal(_root);
	late final TranslationsUserOnboardPageJa onboardPage = TranslationsUserOnboardPageJa.internal(_root);
	late final TranslationsUserCommonJa common = TranslationsUserCommonJa.internal(_root);
}

// Path: settings.settingsPage
class TranslationsSettingsSettingsPageJa {
	TranslationsSettingsSettingsPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '設定'
	String get title => '設定';

	late final TranslationsSettingsSettingsPageAccountJa account = TranslationsSettingsSettingsPageAccountJa.internal(_root);
	late final TranslationsSettingsSettingsPageLayoutJa layout = TranslationsSettingsSettingsPageLayoutJa.internal(_root);
	late final TranslationsSettingsSettingsPageHelpJa help = TranslationsSettingsSettingsPageHelpJa.internal(_root);
}

// Path: settings.accountPage
class TranslationsSettingsAccountPageJa {
	TranslationsSettingsAccountPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'アカウント'
	String get title => 'アカウント';

	late final TranslationsSettingsAccountPageLinkJa link = TranslationsSettingsAccountPageLinkJa.internal(_root);
	late final TranslationsSettingsAccountPageOtherJa other = TranslationsSettingsAccountPageOtherJa.internal(_root);
	late final TranslationsSettingsAccountPageLeaveConfirmDialogJa leaveConfirmDialog = TranslationsSettingsAccountPageLeaveConfirmDialogJa.internal(_root);
}

// Path: settings.accountLinkPage
class TranslationsSettingsAccountLinkPageJa {
	TranslationsSettingsAccountLinkPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'アカウント連携'
	String get title => 'アカウント連携';

	late final TranslationsSettingsAccountLinkPageMeritDescriptionJa meritDescription = TranslationsSettingsAccountLinkPageMeritDescriptionJa.internal(_root);

	/// ja: 'Googleアカウントでサインイン'
	String get signInWithGoogle => 'Googleアカウントでサインイン';

	/// ja: 'Appleアカウントでサインイン'
	String get signInWithApple => 'Appleアカウントでサインイン';
}

// Path: user.welcomePage
class TranslationsUserWelcomePageJa {
	TranslationsUserWelcomePageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'はじめる'
	String get start => 'はじめる';

	/// ja: 'はじめての方はこちら'
	String get forFirstTimers => 'はじめての方はこちら';

	/// ja: 'アカウント連携'
	String get accountLink => 'アカウント連携';
}

// Path: user.profilePage
class TranslationsUserProfilePageJa {
	TranslationsUserProfilePageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'プロフィール'
	String get profile => 'プロフィール';
}

// Path: user.onboardPage
class TranslationsUserOnboardPageJa {
	TranslationsUserOnboardPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'はじめる'
	String get start => 'はじめる';

	late final TranslationsUserOnboardPageIntroductionJa introduction = TranslationsUserOnboardPageIntroductionJa.internal(_root);

	/// ja: 'あなたは？'
	String get profile => 'あなたは？';

	/// ja: 'あっていますか？'
	String get confirm => 'あっていますか？';
}

// Path: user.common
class TranslationsUserCommonJa {
	TranslationsUserCommonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '名前'
	String get name => '名前';

	/// ja: '名前 または ニックネーム'
	String get nameLabelText => '名前 または ニックネーム';

	/// ja: '年齢層'
	String get ageGroup => '年齢層';
}

// Path: settings.settingsPage.account
class TranslationsSettingsSettingsPageAccountJa {
	TranslationsSettingsSettingsPageAccountJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'アカウント'
	String get head => 'アカウント';

	/// ja: 'プロフィール'
	String get profile => 'プロフィール';

	/// ja: 'グループ'
	String get group => 'グループ';

	/// ja: 'アカウント'
	String get account => 'アカウント';

	late final TranslationsSettingsSettingsPageAccountPushNotificationJa pushNotification = TranslationsSettingsSettingsPageAccountPushNotificationJa.internal(_root);
}

// Path: settings.settingsPage.layout
class TranslationsSettingsSettingsPageLayoutJa {
	TranslationsSettingsSettingsPageLayoutJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'レイアウト'
	String get haed => 'レイアウト';

	/// ja: 'UIスタイル'
	String get uiStyle => 'UIスタイル';

	/// ja: 'テーマモード'
	String get themeMode => 'テーマモード';

	/// ja: 'カラー'
	String get colorTheme => 'カラー';
}

// Path: settings.settingsPage.help
class TranslationsSettingsSettingsPageHelpJa {
	TranslationsSettingsSettingsPageHelpJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ヘルプ'
	String get head => 'ヘルプ';

	/// ja: 'つかい方'
	String get howToUse => 'つかい方';

	/// ja: 'お問い合わせ'
	String get contactUs => 'お問い合わせ';

	/// ja: '開発者X (旧Twitter)'
	String get developperTwitter => '開発者X (旧Twitter)';

	/// ja: 'プライバシーポリシー'
	String get privacyPolicy => 'プライバシーポリシー';

	/// ja: 'ライセンス'
	String get license => 'ライセンス';
}

// Path: settings.accountPage.link
class TranslationsSettingsAccountPageLinkJa {
	TranslationsSettingsAccountPageLinkJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'アカウント連携'
	String get head => 'アカウント連携';

	/// ja: 'Google'
	String get google => 'Google';

	/// ja: 'Apple'
	String get apple => 'Apple';
}

// Path: settings.accountPage.other
class TranslationsSettingsAccountPageOtherJa {
	TranslationsSettingsAccountPageOtherJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'その他'
	String get head => 'その他';

	/// ja: 'ログアウト'
	String get logout => 'ログアウト';

	/// ja: '退会'
	String get leave => '退会';
}

// Path: settings.accountPage.leaveConfirmDialog
class TranslationsSettingsAccountPageLeaveConfirmDialogJa {
	TranslationsSettingsAccountPageLeaveConfirmDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '退会しますか？'
	String get title => '退会しますか？';

	/// ja: '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。'
	String get message => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
}

// Path: settings.accountLinkPage.meritDescription
class TranslationsSettingsAccountLinkPageMeritDescriptionJa {
	TranslationsSettingsAccountLinkPageMeritDescriptionJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'アカウント連携を行うことで、 下記の機能をご利用いただけます。'
	String get title => 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。';

	List<String> get itemizedMessages => [
		'クラウドへのデータバックアップ',
		'複数端末での同時利用',
		'端末変更に伴うデータ移行',
	];
}

// Path: user.onboardPage.introduction
class TranslationsUserOnboardPageIntroductionJa {
	TranslationsUserOnboardPageIntroductionJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'はじめに'
	String get title => 'はじめに';

	/// ja: 'まずはプロフィールを登録しましょう'
	String get message => 'まずはプロフィールを登録しましょう';
}

// Path: settings.settingsPage.account.pushNotification
class TranslationsSettingsSettingsPageAccountPushNotificationJa {
	TranslationsSettingsSettingsPageAccountPushNotificationJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'プッシュ通知'
	String get title => 'プッシュ通知';

	/// ja: 'グループないでほしいものが追加された場合に通知が受け取れます'
	String get caption => 'グループないでほしいものが追加された場合に通知が受け取れます';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.hoge': return 'hoge';
			case 'settings.settingsPage.title': return '設定';
			case 'settings.settingsPage.account.head': return 'アカウント';
			case 'settings.settingsPage.account.profile': return 'プロフィール';
			case 'settings.settingsPage.account.group': return 'グループ';
			case 'settings.settingsPage.account.account': return 'アカウント';
			case 'settings.settingsPage.account.pushNotification.title': return 'プッシュ通知';
			case 'settings.settingsPage.account.pushNotification.caption': return 'グループないでほしいものが追加された場合に通知が受け取れます';
			case 'settings.settingsPage.layout.haed': return 'レイアウト';
			case 'settings.settingsPage.layout.uiStyle': return 'UIスタイル';
			case 'settings.settingsPage.layout.themeMode': return 'テーマモード';
			case 'settings.settingsPage.layout.colorTheme': return 'カラー';
			case 'settings.settingsPage.help.head': return 'ヘルプ';
			case 'settings.settingsPage.help.howToUse': return 'つかい方';
			case 'settings.settingsPage.help.contactUs': return 'お問い合わせ';
			case 'settings.settingsPage.help.developperTwitter': return '開発者X (旧Twitter)';
			case 'settings.settingsPage.help.privacyPolicy': return 'プライバシーポリシー';
			case 'settings.settingsPage.help.license': return 'ライセンス';
			case 'settings.accountPage.title': return 'アカウント';
			case 'settings.accountPage.link.head': return 'アカウント連携';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'その他';
			case 'settings.accountPage.other.logout': return 'ログアウト';
			case 'settings.accountPage.other.leave': return '退会';
			case 'settings.accountPage.leaveConfirmDialog.title': return '退会しますか？';
			case 'settings.accountPage.leaveConfirmDialog.message': return '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
			case 'settings.accountLinkPage.title': return 'アカウント連携';
			case 'settings.accountLinkPage.meritDescription.title': return 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。';
			case 'settings.accountLinkPage.meritDescription.itemizedMessages.0': return 'クラウドへのデータバックアップ';
			case 'settings.accountLinkPage.meritDescription.itemizedMessages.1': return '複数端末での同時利用';
			case 'settings.accountLinkPage.meritDescription.itemizedMessages.2': return '端末変更に伴うデータ移行';
			case 'settings.accountLinkPage.signInWithGoogle': return 'Googleアカウントでサインイン';
			case 'settings.accountLinkPage.signInWithApple': return 'Appleアカウントでサインイン';
			case 'user.welcomePage.start': return 'はじめる';
			case 'user.welcomePage.forFirstTimers': return 'はじめての方はこちら';
			case 'user.welcomePage.accountLink': return 'アカウント連携';
			case 'user.profilePage.profile': return 'プロフィール';
			case 'user.onboardPage.start': return 'はじめる';
			case 'user.onboardPage.introduction.title': return 'はじめに';
			case 'user.onboardPage.introduction.message': return 'まずはプロフィールを登録しましょう';
			case 'user.onboardPage.profile': return 'あなたは？';
			case 'user.onboardPage.confirm': return 'あっていますか？';
			case 'user.common.name': return '名前';
			case 'user.common.nameLabelText': return '名前 または ニックネーム';
			case 'user.common.ageGroup': return '年齢層';
			default: return null;
		}
	}
}

