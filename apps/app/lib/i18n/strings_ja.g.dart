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
	late final TranslationsAnalyzeJa analyze = TranslationsAnalyzeJa.internal(_root);
	late final TranslationsGroupJa group = TranslationsGroupJa.internal(_root);
	late final TranslationsItemJa item = TranslationsItemJa.internal(_root);
	late final TranslationsSettingsJa settings = TranslationsSettingsJa.internal(_root);
	late final TranslationsUserJa user = TranslationsUserJa.internal(_root);
}

// Path: analyze
class TranslationsAnalyzeJa {
	TranslationsAnalyzeJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAnalyzeAnalyzePageJa analyzePage = TranslationsAnalyzeAnalyzePageJa.internal(_root);
}

// Path: group
class TranslationsGroupJa {
	TranslationsGroupJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsGroupCommonJa common = TranslationsGroupCommonJa.internal(_root);
	late final TranslationsGroupShareLinkPageJa shareLinkPage = TranslationsGroupShareLinkPageJa.internal(_root);
	late final TranslationsGroupGroupsPageJa groupsPage = TranslationsGroupGroupsPageJa.internal(_root);
	late final TranslationsGroupGroupPageJa groupPage = TranslationsGroupGroupPageJa.internal(_root);
}

// Path: item
class TranslationsItemJa {
	TranslationsItemJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsItemCommonJa common = TranslationsItemCommonJa.internal(_root);
	late final TranslationsItemItemsPageJa itemsPage = TranslationsItemItemsPageJa.internal(_root);
	late final TranslationsItemItemPageJa itemPage = TranslationsItemItemPageJa.internal(_root);
	late final TranslationsItemItemEditPageJa itemEditPage = TranslationsItemItemEditPageJa.internal(_root);
	late final TranslationsItemPurchasePageJa purchasePage = TranslationsItemPurchasePageJa.internal(_root);
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

// Path: analyze.analyzePage
class TranslationsAnalyzeAnalyzePageJa {
	TranslationsAnalyzeAnalyzePageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ふりかえり'
	String get title => 'ふりかえり';

	/// ja: '購入率'
	String get purchaseRate => '購入率';

	/// ja: '購入済'
	String get purchased => '購入済';

	late final TranslationsAnalyzeAnalyzePageFormatJa format = TranslationsAnalyzeAnalyzePageFormatJa.internal(_root);

	/// ja: '合計金額'
	String get totalPrice => '合計金額';
}

// Path: group.common
class TranslationsGroupCommonJa {
	TranslationsGroupCommonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'グループ名'
	String get groupName => 'グループ名';

	/// ja: 'グループから脱退'
	String get leaveGroup => 'グループから脱退';

	late final TranslationsGroupCommonLeaveConfirmDialogJa leaveConfirmDialog = TranslationsGroupCommonLeaveConfirmDialogJa.internal(_root);
}

// Path: group.shareLinkPage
class TranslationsGroupShareLinkPageJa {
	TranslationsGroupShareLinkPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsGroupShareLinkPageJoinedGroupDialogJa joinedGroupDialog = TranslationsGroupShareLinkPageJoinedGroupDialogJa.internal(_root);
}

// Path: group.groupsPage
class TranslationsGroupGroupsPageJa {
	TranslationsGroupGroupsPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '参加中のグループ'
	String get title => '参加中のグループ';

	/// ja: 'ヘルプ'
	String get help => 'ヘルプ';

	late final TranslationsGroupGroupsPageShareGroupHelpDialogJa shareGroupHelpDialog = TranslationsGroupGroupsPageShareGroupHelpDialogJa.internal(_root);

	/// ja: 'グループを作成'
	String get createGroup => 'グループを作成';

	/// ja: 'グループに所属していません。 グループを作成するか、 招待されたグループに参加して下さい。'
	String get notJoinGroup => 'グループに所属していません。 グループを作成するか、 招待されたグループに参加して下さい。';
}

// Path: group.groupPage
class TranslationsGroupGroupPageJa {
	TranslationsGroupGroupPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ほしい物の登録数制限を解放する'
	String get limitBreak => 'ほしい物の登録数制限を解放する';

	late final TranslationsGroupGroupPageAppInPurchaseConfirmDialogJa appInPurchaseConfirmDialog = TranslationsGroupGroupPageAppInPurchaseConfirmDialogJa.internal(_root);

	/// ja: '欲しい物の登録数制限が解放されました。(無制限)'
	String get limitBreakPurchased => '欲しい物の登録数制限が解放されました。(無制限)';

	/// ja: '共有'
	String get shareGroup => '共有';

	/// ja: '共有してメンバーを招待しましょう'
	String get shareGroupCaption => '共有してメンバーを招待しましょう';

	/// ja: 'コピー'
	String get copyLink => 'コピー';

	/// ja: 'コピーしました'
	String get copiedLink => 'コピーしました';

	/// ja: '選択'
	String get select => '選択';

	/// ja: '画像を保存しました。'
	String get savedImage => '画像を保存しました。';
}

// Path: item.common
class TranslationsItemCommonJa {
	TranslationsItemCommonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ほしいもの'
	String get wishList => 'ほしいもの';

	/// ja: 'ステータス'
	String get status => 'ステータス';

	/// ja: 'ほしい度'
	String get wishRank => 'ほしい度';

	/// ja: 'ほしいものの名前'
	String get itemName => 'ほしいものの名前';

	/// ja: 'ほしい人'
	String get wanterName => 'ほしい人';

	/// ja: 'だれがほしい？'
	String get wanterNameLabel => 'だれがほしい？';

	/// ja: 'メモ'
	String get memo => 'メモ';

	/// ja: 'いつほしい？'
	String get wishSeason => 'いつほしい？';

	/// ja: 'URL'
	String get url => 'URL';

	/// ja: '価格'
	String get price => '価格';

	/// ja: 'かう予定の日'
	String get purchasePlanDate => 'かう予定の日';

	/// ja: 'わたした日'
	String get sentDate => 'わたした日';

	/// ja: 'かった人'
	String get buyerName => 'かった人';

	/// ja: '¥${price:int}'
	String currencyFormat({required int price}) => '¥${price}';

	/// ja: '¥'
	String get currencySymbol => '¥';
}

// Path: item.itemsPage
class TranslationsItemItemsPageJa {
	TranslationsItemItemsPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ほしいもの'
	String get title => 'ほしいもの';

	/// ja: 'ほしいものを追加'
	String get add => 'ほしいものを追加';

	late final TranslationsItemItemsPageNotSelectedGroupDialogJa notSelectedGroupDialog = TranslationsItemItemsPageNotSelectedGroupDialogJa.internal(_root);

	/// ja: 'アカウント'
	String get account => 'アカウント';

	/// ja: 'グループを切り替えました。'
	String get completeChangeGroup => 'グループを切り替えました。';

	/// ja: 'ほしいものが見つかりませんでした。'
	String get itemEmpty => 'ほしいものが見つかりませんでした。';

	/// ja: '${length:int}件選択'
	String selectNumberText({required int length}) => '${length}件選択';

	/// ja: '星${value:String}'
	String wishRankFormat({required String value}) => '星${value}';

	/// ja: '並び替え'
	String get sortOrder => '並び替え';
}

// Path: item.itemPage
class TranslationsItemItemPageJa {
	TranslationsItemItemPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ほしいものが見つかりませんでした。 削除された可能性があります。 再度操作して下さい。'
	String get deletedItem => 'ほしいものが見つかりませんでした。 削除された可能性があります。\n再度操作して下さい。';

	late final TranslationsItemItemPageWishSeasonJa wishSeason = TranslationsItemItemPageWishSeasonJa.internal(_root);
	late final TranslationsItemItemPagePurchaseSectionJa purchaseSection = TranslationsItemItemPagePurchaseSectionJa.internal(_root);

	/// ja: '購入/購入予定'
	String get purchase => '購入/購入予定';
}

// Path: item.itemEditPage
class TranslationsItemItemEditPageJa {
	TranslationsItemItemEditPageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'ほしいものを編集'
	String get editTitle => 'ほしいものを編集';

	/// ja: 'ほしいものを作成'
	String get createTitle => 'ほしいものを作成';

	late final TranslationsItemItemEditPageWishSeasonJa wishSeason = TranslationsItemItemEditPageWishSeasonJa.internal(_root);

	/// ja: 'URLを追加'
	String get addUrl => 'URLを追加';
}

// Path: item.purchasePage
class TranslationsItemPurchasePageJa {
	TranslationsItemPurchasePageJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '購入/購入予定情報'
	String get purchase => '購入/購入予定情報';

	late final TranslationsItemPurchasePageSurpriseJa surprise = TranslationsItemPurchasePageSurpriseJa.internal(_root);
	late final TranslationsItemPurchasePagePurchasePlanDateJa purchasePlanDate = TranslationsItemPurchasePagePurchasePlanDateJa.internal(_root);
	late final TranslationsItemPurchasePageSentDateJa sentDate = TranslationsItemPurchasePageSentDateJa.internal(_root);
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

// Path: analyze.analyzePage.format
class TranslationsAnalyzeAnalyzePageFormatJa {
	TranslationsAnalyzeAnalyzePageFormatJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '${molecule:int}/${denominator:int}'
	String fraction({required int molecule, required int denominator}) => '${molecule}/${denominator}';

	/// ja: '${month:int}月'
	String month({required int month}) => '${month}月';
}

// Path: group.common.leaveConfirmDialog
class TranslationsGroupCommonLeaveConfirmDialogJa {
	TranslationsGroupCommonLeaveConfirmDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '離脱の確認'
	String get title => '離脱の確認';

	/// ja: '「${groupName:String}」から離脱しますか？'
	String message({required String groupName}) => '「${groupName}」から離脱しますか？';
}

// Path: group.shareLinkPage.joinedGroupDialog
class TranslationsGroupShareLinkPageJoinedGroupDialogJa {
	TranslationsGroupShareLinkPageJoinedGroupDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'グループへ参加'
	String get title => 'グループへ参加';

	/// ja: 'グループに参加しました。'
	String get message => 'グループに参加しました。';
}

// Path: group.groupsPage.shareGroupHelpDialog
class TranslationsGroupGroupsPageShareGroupHelpDialogJa {
	TranslationsGroupGroupsPageShareGroupHelpDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'グループの共有/参加'
	String get title => 'グループの共有/参加';

	/// ja: '【グループの共有】 グループから「共有」を行って下さい 【グループへの参加】 共有されたURLをクリックするか、 QRコードを読み取ることで参加できます'
	String get message => '【グループの共有】 グループから「共有」を行って下さい\n\n【グループへの参加】 共有されたURLをクリックするか、 QRコードを読み取ることで参加できます';
}

// Path: group.groupPage.appInPurchaseConfirmDialog
class TranslationsGroupGroupPageAppInPurchaseConfirmDialogJa {
	TranslationsGroupGroupPageAppInPurchaseConfirmDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '購入の確認'
	String get title => '購入の確認';

	/// ja: '商品を購入すると 表示中のグループに登録できる 欲しい物の制限が解放されます。 (無料版は30個まで) 価格：¥${price:String}(無期限)'
	String message({required String price}) => '商品を購入すると 表示中のグループに登録できる 欲しい物の制限が解放されます。 (無料版は30個まで)\n価格：¥${price}(無期限)';

	/// ja: '購入(¥${price:String})'
	String okLabel({required String price}) => '購入(¥${price})';
}

// Path: item.itemsPage.notSelectedGroupDialog
class TranslationsItemItemsPageNotSelectedGroupDialogJa {
	TranslationsItemItemsPageNotSelectedGroupDialogJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'グループが選択されていません'
	String get title => 'グループが選択されていません';

	/// ja: 'グループを選択してからほしいものを追加して下さい'
	String get message => 'グループを選択してからほしいものを追加して下さい';
}

// Path: item.itemPage.wishSeason
class TranslationsItemItemPageWishSeasonJa {
	TranslationsItemItemPageWishSeasonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '例：クリスマス、誕生日'
	String get hint => '例：クリスマス、誕生日';
}

// Path: item.itemPage.purchaseSection
class TranslationsItemItemPagePurchaseSectionJa {
	TranslationsItemItemPagePurchaseSectionJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '購入/購入予定情報'
	String get title => '購入/購入予定情報';

	/// ja: '以降の内容はグループ内の大人にだけ表示されます'
	String get message => '以降の内容はグループ内の大人にだけ表示されます';
}

// Path: item.itemEditPage.wishSeason
class TranslationsItemItemEditPageWishSeasonJa {
	TranslationsItemItemEditPageWishSeasonJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '例：クリスマス、誕生日'
	String get hint => '例：クリスマス、誕生日';
}

// Path: item.purchasePage.surprise
class TranslationsItemPurchasePageSurpriseJa {
	TranslationsItemPurchasePageSurpriseJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'サプライズ'
	String get label => 'サプライズ';

	/// ja: '状況を子供に知られたくない'
	String get caption => '状況を子供に知られたくない';
}

// Path: item.purchasePage.purchasePlanDate
class TranslationsItemPurchasePagePurchasePlanDateJa {
	TranslationsItemPurchasePagePurchasePlanDateJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '入力すると「購入予定」になります'
	String get hint => '入力すると「購入予定」になります';
}

// Path: item.purchasePage.sentDate
class TranslationsItemPurchasePageSentDateJa {
	TranslationsItemPurchasePageSentDateJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: '入力すると「購入済」になります'
	String get hint => '入力すると「購入済」になります';
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
			'analyze.analyzePage.title' => 'ふりかえり',
			'analyze.analyzePage.purchaseRate' => '購入率',
			'analyze.analyzePage.purchased' => '購入済',
			'analyze.analyzePage.format.fraction' => ({required int molecule, required int denominator}) => '${molecule}/${denominator}',
			'analyze.analyzePage.format.month' => ({required int month}) => '${month}月',
			'analyze.analyzePage.totalPrice' => '合計金額',
			'group.common.groupName' => 'グループ名',
			'group.common.leaveGroup' => 'グループから脱退',
			'group.common.leaveConfirmDialog.title' => '離脱の確認',
			'group.common.leaveConfirmDialog.message' => ({required String groupName}) => '「${groupName}」から離脱しますか？',
			'group.shareLinkPage.joinedGroupDialog.title' => 'グループへ参加',
			'group.shareLinkPage.joinedGroupDialog.message' => 'グループに参加しました。',
			'group.groupsPage.title' => '参加中のグループ',
			'group.groupsPage.help' => 'ヘルプ',
			'group.groupsPage.shareGroupHelpDialog.title' => 'グループの共有/参加',
			'group.groupsPage.shareGroupHelpDialog.message' => '【グループの共有】 グループから「共有」を行って下さい\n\n【グループへの参加】 共有されたURLをクリックするか、 QRコードを読み取ることで参加できます',
			'group.groupsPage.createGroup' => 'グループを作成',
			'group.groupsPage.notJoinGroup' => 'グループに所属していません。 グループを作成するか、 招待されたグループに参加して下さい。',
			'group.groupPage.limitBreak' => 'ほしい物の登録数制限を解放する',
			'group.groupPage.appInPurchaseConfirmDialog.title' => '購入の確認',
			'group.groupPage.appInPurchaseConfirmDialog.message' => ({required String price}) => '商品を購入すると 表示中のグループに登録できる 欲しい物の制限が解放されます。 (無料版は30個まで)\n価格：¥${price}(無期限)',
			'group.groupPage.appInPurchaseConfirmDialog.okLabel' => ({required String price}) => '購入(¥${price})',
			'group.groupPage.limitBreakPurchased' => '欲しい物の登録数制限が解放されました。(無制限)',
			'group.groupPage.shareGroup' => '共有',
			'group.groupPage.shareGroupCaption' => '共有してメンバーを招待しましょう',
			'group.groupPage.copyLink' => 'コピー',
			'group.groupPage.copiedLink' => 'コピーしました',
			'group.groupPage.select' => '選択',
			'group.groupPage.savedImage' => '画像を保存しました。',
			'item.common.wishList' => 'ほしいもの',
			'item.common.status' => 'ステータス',
			'item.common.wishRank' => 'ほしい度',
			'item.common.itemName' => 'ほしいものの名前',
			'item.common.wanterName' => 'ほしい人',
			'item.common.wanterNameLabel' => 'だれがほしい？',
			'item.common.memo' => 'メモ',
			'item.common.wishSeason' => 'いつほしい？',
			'item.common.url' => 'URL',
			'item.common.price' => '価格',
			'item.common.purchasePlanDate' => 'かう予定の日',
			'item.common.sentDate' => 'わたした日',
			'item.common.buyerName' => 'かった人',
			'item.common.currencyFormat' => ({required int price}) => '¥${price}',
			'item.common.currencySymbol' => '¥',
			'item.itemsPage.title' => 'ほしいもの',
			'item.itemsPage.add' => 'ほしいものを追加',
			'item.itemsPage.notSelectedGroupDialog.title' => 'グループが選択されていません',
			'item.itemsPage.notSelectedGroupDialog.message' => 'グループを選択してからほしいものを追加して下さい',
			'item.itemsPage.account' => 'アカウント',
			'item.itemsPage.completeChangeGroup' => 'グループを切り替えました。',
			'item.itemsPage.itemEmpty' => 'ほしいものが見つかりませんでした。',
			'item.itemsPage.selectNumberText' => ({required int length}) => '${length}件選択',
			'item.itemsPage.wishRankFormat' => ({required String value}) => '星${value}',
			'item.itemsPage.sortOrder' => '並び替え',
			'item.itemPage.deletedItem' => 'ほしいものが見つかりませんでした。 削除された可能性があります。\n再度操作して下さい。',
			'item.itemPage.wishSeason.hint' => '例：クリスマス、誕生日',
			'item.itemPage.purchaseSection.title' => '購入/購入予定情報',
			'item.itemPage.purchaseSection.message' => '以降の内容はグループ内の大人にだけ表示されます',
			'item.itemPage.purchase' => '購入/購入予定',
			'item.itemEditPage.editTitle' => 'ほしいものを編集',
			'item.itemEditPage.createTitle' => 'ほしいものを作成',
			'item.itemEditPage.wishSeason.hint' => '例：クリスマス、誕生日',
			'item.itemEditPage.addUrl' => 'URLを追加',
			'item.purchasePage.purchase' => '購入/購入予定情報',
			'item.purchasePage.surprise.label' => 'サプライズ',
			'item.purchasePage.surprise.caption' => '状況を子供に知られたくない',
			'item.purchasePage.purchasePlanDate.hint' => '入力すると「購入予定」になります',
			'item.purchasePage.sentDate.hint' => '入力すると「購入済」になります',
			'settings.settingsPage.title' => '設定',
			'settings.settingsPage.account.head' => 'アカウント',
			'settings.settingsPage.account.profile' => 'プロフィール',
			'settings.settingsPage.account.group' => 'グループ',
			'settings.settingsPage.account.account' => 'アカウント',
			'settings.settingsPage.account.pushNotification.title' => 'プッシュ通知',
			'settings.settingsPage.account.pushNotification.caption' => 'グループないでほしいものが追加された場合に通知が受け取れます',
			'settings.settingsPage.layout.haed' => 'レイアウト',
			'settings.settingsPage.layout.uiStyle' => 'UIスタイル',
			'settings.settingsPage.layout.themeMode' => 'テーマモード',
			'settings.settingsPage.layout.colorTheme' => 'カラー',
			'settings.settingsPage.help.head' => 'ヘルプ',
			'settings.settingsPage.help.howToUse' => 'つかい方',
			'settings.settingsPage.help.contactUs' => 'お問い合わせ',
			'settings.settingsPage.help.developperTwitter' => '開発者X (旧Twitter)',
			'settings.settingsPage.help.privacyPolicy' => 'プライバシーポリシー',
			'settings.settingsPage.help.license' => 'ライセンス',
			'settings.accountPage.title' => 'アカウント',
			'settings.accountPage.link.head' => 'アカウント連携',
			'settings.accountPage.link.google' => 'Google',
			'settings.accountPage.link.apple' => 'Apple',
			'settings.accountPage.other.head' => 'その他',
			'settings.accountPage.other.logout' => 'ログアウト',
			'settings.accountPage.other.leave' => '退会',
			'settings.accountPage.leaveConfirmDialog.title' => '退会しますか？',
			'settings.accountPage.leaveConfirmDialog.message' => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。',
			'settings.accountLinkPage.title' => 'アカウント連携',
			'settings.accountLinkPage.meritDescription.title' => 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。',
			'settings.accountLinkPage.meritDescription.itemizedMessages.0' => 'クラウドへのデータバックアップ',
			'settings.accountLinkPage.meritDescription.itemizedMessages.1' => '複数端末での同時利用',
			'settings.accountLinkPage.meritDescription.itemizedMessages.2' => '端末変更に伴うデータ移行',
			'settings.accountLinkPage.signInWithGoogle' => 'Googleアカウントでサインイン',
			'settings.accountLinkPage.signInWithApple' => 'Appleアカウントでサインイン',
			'user.welcomePage.start' => 'はじめる',
			'user.welcomePage.forFirstTimers' => 'はじめての方はこちら',
			'user.welcomePage.accountLink' => 'アカウント連携',
			'user.profilePage.profile' => 'プロフィール',
			'user.onboardPage.start' => 'はじめる',
			'user.onboardPage.introduction.title' => 'はじめに',
			'user.onboardPage.introduction.message' => 'まずはプロフィールを登録しましょう',
			'user.onboardPage.profile' => 'あなたは？',
			'user.onboardPage.confirm' => 'あっていますか？',
			'user.common.name' => '名前',
			'user.common.nameLabelText' => '名前 または ニックネーム',
			'user.common.ageGroup' => '年齢層',
			_ => null,
		};
	}
}

