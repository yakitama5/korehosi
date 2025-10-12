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
}

// Path: app
class TranslationsAppJa {
	TranslationsAppJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'はじめる'
	String get start => 'はじめる';

	/// ja: 'はじめての方はこちら'
	String get firstTime => 'はじめての方はこちら';

	/// ja: 'アカウント連携'
	String get accountLink => 'アカウント連携';

	/// ja: 'お問い合わせ'
	String get contactUs => 'お問い合わせ';

	/// ja: '利用規約'
	String get termOfService => '利用規約';

	/// ja: 'プライバシーポリシー'
	String get privacyPolicy => 'プライバシーポリシー';

	/// ja: 'アカウント連携を行うことで、 下記の機能をご利用いただけます。'
	String get accountLinkDescTitle => 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。';

	/// ja: 'クラウドへのデータバックアップ'
	String get accountLinkDescBodyCloudBackup => 'クラウドへのデータバックアップ';

	/// ja: '複数端末での同時利用'
	String get accountLinkDescBodyMultiDevice => '複数端末での同時利用';

	/// ja: '端末変更に伴うデータ移行'
	String get accountLinkDescBodyDataSend => '端末変更に伴うデータ移行';

	/// ja: 'はじめに'
	String get onboardStartTitle => 'はじめに';

	/// ja: 'まずはプロフィールを登録しましょう'
	String get onboardStartMessage => 'まずはプロフィールを登録しましょう';

	/// ja: 'あなたは？'
	String get questionAgeGroup => 'あなたは？';

	/// ja: '性別は？'
	String get questionSex => '性別は？';

	/// ja: 'お名前は？'
	String get questionName => 'お名前は？';

	/// ja: 'または ニックネーム'
	String get questionNameCapiton => 'または ニックネーム';

	/// ja: 'あっていますか？'
	String get questionConfirm => 'あっていますか？';

	/// ja: 'こども (買ってほしい)'
	String get selectChild => 'こども (買ってほしい)';

	/// ja: 'おとな (買ってあげたい)'
	String get selectAdult => 'おとな (買ってあげたい)';

	/// ja: 'おとこ'
	String get selectMan => 'おとこ';

	/// ja: 'おんな'
	String get selectWoman => 'おんな';

	/// ja: 'どちらでもない'
	String get selectNeither => 'どちらでもない';

	/// ja: '名前 または ニックネーム'
	String get nameLabel => '名前 または ニックネーム';

	/// ja: '名前'
	String get name => '名前';

	/// ja: '次へ'
	String get next => '次へ';

	/// ja: '戻る'
	String get back => '戻る';

	/// ja: '前へ'
	String get prev => '前へ';

	/// ja: 'スキップ'
	String get skip => 'スキップ';

	/// ja: 'おとこ'
	String get sexMan => 'おとこ';

	/// ja: 'おんな'
	String get sexWoman => 'おんな';

	/// ja: 'どちらでもない'
	String get sexNeither => 'どちらでもない';

	/// ja: '年齢層'
	String get ageGroup => '年齢層';

	/// ja: '性別'
	String get sex => '性別';

	/// ja: 'Googleでサインイン'
	String get signInWithGoogle => 'Googleでサインイン';

	/// ja: 'Appleでサインイン'
	String get signInWithApple => 'Appleでサインイン';

	/// ja: 'ほしいもの'
	String get wishList => 'ほしいもの';

	/// ja: 'ふりかえり'
	String get analyze => 'ふりかえり';

	/// ja: 'せってい'
	String get settings => 'せってい';

	/// ja: 'ほしいものを追加'
	String get addWishList => 'ほしいものを追加';

	/// ja: '並び替え'
	String get sortOrder => '並び替え';

	/// ja: 'ステータス'
	String get status => 'ステータス';

	/// ja: '欲しい度'
	String get wishRank => '欲しい度';

	/// ja: 'キャンセル'
	String get cancel => 'キャンセル';

	/// ja: 'リセット'
	String get reset => 'リセット';

	/// ja: '適用'
	String get apply => '適用';

	/// ja: 'すべて'
	String get all => 'すべて';

	/// ja: '名無し'
	String get noName => '名無し';

	/// ja: ' のグループ'
	String get groupInitialNameSuffix => ' のグループ';

	/// ja: '予期せぬエラーが発生しました。'
	String get unexpectedErrorMessage => '予期せぬエラーが発生しました。';

	/// ja: '${item:String}が見つかりませんでした。'
	String searchEmptyMessage({required String item}) => '${item}が見つかりませんでした。';

	/// ja: '商品名'
	String get merchandiseName => '商品名';

	/// ja: '${item:String}を編集'
	String editPageTitle({required String item}) => '${item}を編集';

	/// ja: '${item:String}を作成'
	String createPageTitle({required String item}) => '${item}を作成';

	/// ja: 'いつほしい？'
	String get wishSeasonLabel => 'いつほしい？';

	/// ja: '例：クリスマス、誕生日'
	String get wishSeasonHint => '例：クリスマス、誕生日';

	/// ja: 'URL'
	String get url => 'URL';

	/// ja: 'URLを追加'
	String get addUrl => 'URLを追加';

	/// ja: 'メモ'
	String get memo => 'メモ';

	/// ja: '星'
	String get star => '星';

	/// ja: '削除'
	String get delete => '削除';

	/// ja: '削除済です。'
	String get deletedMessage => '削除済です。';

	/// ja: '削除しました。'
	String get completeDeleteMessage => '削除しました。';

	/// ja: 'グループを切り替えました。'
	String get completeChangeGroupMessage => 'グループを切り替えました。';

	/// ja: '写真のアップロード'
	String get uploadImage => '写真のアップロード';

	/// ja: 'OK'
	String get ok => 'OK';

	/// ja: '破棄'
	String get discard => '破棄';

	/// ja: '破棄しない'
	String get notDiscard => '破棄しない';

	/// ja: '編集'
	String get edit => '編集';

	/// ja: '購入/購入予定'
	String get purchaseOrpurchasePlan => '購入/購入予定';

	/// ja: '削除の確認'
	String get deleteConfirmTitle => '削除の確認';

	/// ja: '「${item:String}」を削除しますか？'
	String deleteCofirmMessage({required String item}) => '「${item}」を削除しますか？';

	/// ja: '「${name:String}」を削除しますか？ グループに登録している欲しい物は全て削除されます。 この操作は元に戻すことができません。'
	String deleteGroupCofirmMessage({required String name}) => '「${name}」を削除しますか？\nグループに登録している欲しい物は全て削除されます。\nこの操作は元に戻すことができません。';

	/// ja: '離脱の確認'
	String get leaveConfirmTitle => '離脱の確認';

	/// ja: '「${group:String}」から離脱しますか？'
	String leaveCofirmMessage({required String group}) => '「${group}」から離脱しますか？';

	/// ja: 'グループが選択されていません'
	String get notSelectedGroupDialogTitle => 'グループが選択されていません';

	/// ja: 'グループを選択してからほしいものを追加して下さい'
	String get notSelectedGroupDialogMessage => 'グループを選択してからほしいものを追加して下さい';

	/// ja: '購入/購入予定情報'
	String get purchaseInfoTitle => '購入/購入予定情報';

	/// ja: '以降の内容はグループ内の大人にだけ表示されます'
	String get purchaseInfoCaption => '以降の内容はグループ内の大人にだけ表示されます';

	/// ja: '金額'
	String get price => '金額';

	/// ja: '購入予定日'
	String get purchasePlanDateTime => '購入予定日';

	/// ja: '¥'
	String get yenMark => '¥';

	/// ja: 'サプライズ'
	String get surprise => 'サプライズ';

	/// ja: '状況を子供に知られたくない'
	String get surpriseCaption => '状況を子供に知られたくない';

	/// ja: '入力すると「購入予定」になります'
	String get purchasePlanDateTimeCaption => '入力すると「購入予定」になります';

	/// ja: '入力すると「購入済」になります'
	String get sentAtCaption => '入力すると「購入済」になります';

	/// ja: '渡した日'
	String get sentAt => '渡した日';

	/// ja: '認証エラーが発生しました。 しばらく時間を置いてログインして下さい。'
	String get authErrorMessage => '認証エラーが発生しました。\nしばらく時間を置いてログインして下さい。';

	/// ja: 'アカウント'
	String get account => 'アカウント';

	/// ja: 'プロフィール'
	String get profile => 'プロフィール';

	/// ja: 'グループ'
	String get group => 'グループ';

	/// ja: 'ヘルプ'
	String get help => 'ヘルプ';

	/// ja: '開発者X (旧Twitter)'
	String get developperTwitter => '開発者X (旧Twitter)';

	/// ja: 'ライセンス'
	String get license => 'ライセンス';

	/// ja: 'URLを開けませんでした。 頻発する場合はお問い合わせ下さい。'
	String get urlErrorMessageCanNotOpen => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';

	/// ja: '参加グループ'
	String get joinGroup => '参加グループ';

	/// ja: '共有'
	String get share => '共有';

	/// ja: 'コピー'
	String get copy => 'コピー';

	/// ja: '共有してメンバーを招待しましょう'
	String get shareCaption => '共有してメンバーを招待しましょう';

	/// ja: '${user:String}さんから${group:String}へ招待されました。 下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます ${url:String}'
	String groupShareText({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}';

	/// ja: 'コピーしました'
	String get copied => 'コピーしました';

	/// ja: '保存しました'
	String get saved => '保存しました';

	/// ja: 'グループ名'
	String get groupName => 'グループ名';

	/// ja: '作成したグループを全て削除することはできません。 最低でも1件以上のグループが必要です。'
	String get deleteErrorMessageRequiredExists => '作成したグループを全て削除することはできません。\n最低でも1件以上のグループが必要です。';

	/// ja: '削除を行う権限がありません。'
	String get deleteErrorMessagePermission => '削除を行う権限がありません。';

	/// ja: 'グループの共有/参加'
	String get shareGroupHelpTitle => 'グループの共有/参加';

	/// ja: '【グループの共有】 グループから「共有」を行って下さい 【グループへの参加】 共有されたURLをクリックするか、 QRコードを読み取ることで参加できます'
	String get shareGroupHelpMessage => '【グループの共有】\nグループから「共有」を行って下さい\n\n【グループへの参加】\n共有されたURLをクリックするか、\nQRコードを読み取ることで参加できます';

	/// ja: 'グループを追加'
	String get addGroup => 'グループを追加';

	/// ja: 'その他'
	String get other => 'その他';

	/// ja: 'ログアウト'
	String get logout => 'ログアウト';

	/// ja: '退会'
	String get deleteAccount => '退会';

	/// ja: 'Google'
	String get google => 'Google';

	/// ja: 'Apple'
	String get apple => 'Apple';

	/// ja: 'グループに所属していません。 グループを作成するか、 招待されたグループに参加して下さい。'
	String get notJoinedGroupMessage => 'グループに所属していません。\nグループを作成するか、\n招待されたグループに参加して下さい。';

	/// ja: '<削除済ユーザー>'
	String get deletedUser => '<削除済ユーザー>';

	/// ja: '${length:int}件選択'
	String selectNumberText({required int length}) => '${length}件選択';

	/// ja: 'アカウントは1つ以上の外部アカウントとの連携をしておく必要があります。'
	String get authErrorMessageNotExistsProvider => 'アカウントは1つ以上の外部アカウントとの連携をしておく必要があります。';

	/// ja: 'このアカウントはすでに連携済です。 別のアカウントを利用するか、一度ログアウトしてから連携して下さい。'
	String get authErrorMessagAlreadyInUse => 'このアカウントはすでに連携済です。\n別のアカウントを利用するか、一度ログアウトしてから連携して下さい。';

	/// ja: '・'
	String get bullet => '・';

	/// ja: '現在、ふりかえり機能はご利用頂けません。'
	String get notUseAnalytics => '現在、ふりかえり機能はご利用頂けません。';

	/// ja: 'ふりかえり機能では、以下の機能がご利用頂けます。'
	String get analyticsFeatureTitle => 'ふりかえり機能では、以下の機能がご利用頂けます。';

	/// ja: '金額の推移'
	String get priceAnalytics => '金額の推移';

	/// ja: '買ってくれた人の割合'
	String get purchaseUserAnalytics => '買ってくれた人の割合';

	/// ja: '買ってもらった割合'
	String get purchasedAnalytics => '買ってもらった割合';

	/// ja: '※ 開発者のこどもが幼稚園に入るまでには公開します'
	String get analyticsPublishPlan => '※ 開発者のこどもが幼稚園に入るまでには公開します';

	/// ja: '退会の確認'
	String get deleteAccountConfirmTitle => '退会の確認';

	/// ja: '本当に退会してもよろしいですか？ この操作は元に戻すことができません。'
	String get deleteAccountConfirmMessage => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';

	/// ja: 'グループへ参加'
	String get joinedGroupTitle => 'グループへ参加';

	/// ja: 'グループに参加しました。'
	String get joinedGroupMessage => 'グループに参加しました。';

	/// ja: '離脱'
	String get leave => '離脱';

	/// ja: '選択'
	String get select => '選択';

	/// ja: 'だれがほしい？'
	String get wanterName => 'だれがほしい？';

	/// ja: 'ほしい人'
	String get wanterNameChipTitle => 'ほしい人';

	/// ja: '登録数の上限に達しました。 購入済のものを削除するか、プレミアムプランに変更して下さい。'
	String get businessErrorMessageOverItemCount => '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';

	/// ja: 'アプリの更新'
	String get updateAppTitle => 'アプリの更新';

	/// ja: 'アプリの最新版がリリースされています。 ストアへ移動しますか？'
	String get updateAppMessage => 'アプリの最新版がリリースされています。\nストアへ移動しますか？';

	/// ja: 'ストアへ'
	String get goStore => 'ストアへ';

	/// ja: '購入した人'
	String get buyerName => '購入した人';

	/// ja: '使い方'
	String get howToUse => '使い方';

	/// ja: '欲しい物の登録数制限を解放'
	String get joinPremiumGroup => '欲しい物の登録数制限を解放';

	/// ja: '欲しい物の登録数制限が解放されました。(無制限)'
	String get joinedPremiumGroup => '欲しい物の登録数制限が解放されました。(無制限)';

	/// ja: '商品の購入'
	String get itemPurchase => '商品の購入';

	/// ja: '商品を購入すると 表示中のグループに登録できる 欲しい物の制限が解放されます。 (無料版は30個まで) 価格：¥${price:String}(${term:String})'
	String itemLimitReleaseMessage({required String price, required String term}) => '商品を購入すると\n表示中のグループに登録できる\n欲しい物の制限が解放されます。\n(無料版は30個まで)\n\n価格：¥${price}(${term})';

	/// ja: '購入(¥${price:String})'
	String purchaseOkLabel({required String price}) => '購入(¥${price})';

	/// ja: '無期限'
	String get lifeful => '無期限';

	/// ja: 'ダークモード'
	String get darkMode => 'ダークモード';

	/// ja: 'ライトモード'
	String get lightMode => 'ライトモード';

	/// ja: '購入率'
	String get purchaseRate => '購入率';

	/// ja: '購入率 (予定込)'
	String get purchaseRateAndPlan => '購入率 (予定込)';

	/// ja: '${percent:String}%'
	String formatPercent({required String percent}) => '${percent}%';

	/// ja: '購入金額'
	String get purchasePrice => '購入金額';

	/// ja: '${month:int}月'
	String formatMonth({required int month}) => '${month}月';

	/// ja: '${molecule:int}/${denominator:int}'
	String formatFraction({required int molecule, required int denominator}) => '${molecule}/${denominator}';

	/// ja: '${name:String}さんがほしいものを追加しました！'
	String notificationAddItemTitle({required String name}) => '${name}さんがほしいものを追加しました！';

	/// ja: '${name:String}さんがほしいものを追加しました！'
	String notificationAddItemBody({required String name}) => '${name}さんがほしいものを追加しました！';

	/// ja: 'プッシュ通知'
	String get pushNotification => 'プッシュ通知';

	/// ja: 'グループ内でほしいものが追加された場合に通知が受け取れます'
	String get pushNotificationDescription => 'グループ内でほしいものが追加された場合に通知が受け取れます';

	/// ja: '購入済'
	String get purchased => '購入済';
}

// Path: settings
class TranslationsSettingsJa {
	TranslationsSettingsJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsSettingsPageJa settingsPage = TranslationsSettingsSettingsPageJa.internal(_root);
	late final TranslationsSettingsAccountPageJa accountPage = TranslationsSettingsAccountPageJa.internal(_root);
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

// Path: settings.settingsPage.account
class TranslationsSettingsSettingsPageAccountJa {
	TranslationsSettingsSettingsPageAccountJa.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ja: 'アカウント'
	String get head => 'アカウント';

	/// ja: 'アカウント'
	String get account => 'アカウント';
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

	/// ja: '開発者情報'
	String get developperTwitter => '開発者情報';

	/// ja: 'プライバシーポリシー'
	String get privacyPollicy => 'プライバシーポリシー';

	/// ja: 'ライセンス'
	String get licencse => 'ライセンス';
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
	String get body => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.start': return 'はじめる';
			case 'app.firstTime': return 'はじめての方はこちら';
			case 'app.accountLink': return 'アカウント連携';
			case 'app.contactUs': return 'お問い合わせ';
			case 'app.termOfService': return '利用規約';
			case 'app.privacyPolicy': return 'プライバシーポリシー';
			case 'app.accountLinkDescTitle': return 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。';
			case 'app.accountLinkDescBodyCloudBackup': return 'クラウドへのデータバックアップ';
			case 'app.accountLinkDescBodyMultiDevice': return '複数端末での同時利用';
			case 'app.accountLinkDescBodyDataSend': return '端末変更に伴うデータ移行';
			case 'app.onboardStartTitle': return 'はじめに';
			case 'app.onboardStartMessage': return 'まずはプロフィールを登録しましょう';
			case 'app.questionAgeGroup': return 'あなたは？';
			case 'app.questionSex': return '性別は？';
			case 'app.questionName': return 'お名前は？';
			case 'app.questionNameCapiton': return 'または ニックネーム';
			case 'app.questionConfirm': return 'あっていますか？';
			case 'app.selectChild': return 'こども (買ってほしい)';
			case 'app.selectAdult': return 'おとな (買ってあげたい)';
			case 'app.selectMan': return 'おとこ';
			case 'app.selectWoman': return 'おんな';
			case 'app.selectNeither': return 'どちらでもない';
			case 'app.nameLabel': return '名前 または ニックネーム';
			case 'app.name': return '名前';
			case 'app.next': return '次へ';
			case 'app.back': return '戻る';
			case 'app.prev': return '前へ';
			case 'app.skip': return 'スキップ';
			case 'app.sexMan': return 'おとこ';
			case 'app.sexWoman': return 'おんな';
			case 'app.sexNeither': return 'どちらでもない';
			case 'app.ageGroup': return '年齢層';
			case 'app.sex': return '性別';
			case 'app.signInWithGoogle': return 'Googleでサインイン';
			case 'app.signInWithApple': return 'Appleでサインイン';
			case 'app.wishList': return 'ほしいもの';
			case 'app.analyze': return 'ふりかえり';
			case 'app.settings': return 'せってい';
			case 'app.addWishList': return 'ほしいものを追加';
			case 'app.sortOrder': return '並び替え';
			case 'app.status': return 'ステータス';
			case 'app.wishRank': return '欲しい度';
			case 'app.cancel': return 'キャンセル';
			case 'app.reset': return 'リセット';
			case 'app.apply': return '適用';
			case 'app.all': return 'すべて';
			case 'app.noName': return '名無し';
			case 'app.groupInitialNameSuffix': return ' のグループ';
			case 'app.unexpectedErrorMessage': return '予期せぬエラーが発生しました。';
			case 'app.searchEmptyMessage': return ({required String item}) => '${item}が見つかりませんでした。';
			case 'app.merchandiseName': return '商品名';
			case 'app.editPageTitle': return ({required String item}) => '${item}を編集';
			case 'app.createPageTitle': return ({required String item}) => '${item}を作成';
			case 'app.wishSeasonLabel': return 'いつほしい？';
			case 'app.wishSeasonHint': return '例：クリスマス、誕生日';
			case 'app.url': return 'URL';
			case 'app.addUrl': return 'URLを追加';
			case 'app.memo': return 'メモ';
			case 'app.star': return '星';
			case 'app.delete': return '削除';
			case 'app.deletedMessage': return '削除済です。';
			case 'app.completeDeleteMessage': return '削除しました。';
			case 'app.completeChangeGroupMessage': return 'グループを切り替えました。';
			case 'app.uploadImage': return '写真のアップロード';
			case 'app.ok': return 'OK';
			case 'app.discard': return '破棄';
			case 'app.notDiscard': return '破棄しない';
			case 'app.edit': return '編集';
			case 'app.purchaseOrpurchasePlan': return '購入/購入予定';
			case 'app.deleteConfirmTitle': return '削除の確認';
			case 'app.deleteCofirmMessage': return ({required String item}) => '「${item}」を削除しますか？';
			case 'app.deleteGroupCofirmMessage': return ({required String name}) => '「${name}」を削除しますか？\nグループに登録している欲しい物は全て削除されます。\nこの操作は元に戻すことができません。';
			case 'app.leaveConfirmTitle': return '離脱の確認';
			case 'app.leaveCofirmMessage': return ({required String group}) => '「${group}」から離脱しますか？';
			case 'app.notSelectedGroupDialogTitle': return 'グループが選択されていません';
			case 'app.notSelectedGroupDialogMessage': return 'グループを選択してからほしいものを追加して下さい';
			case 'app.purchaseInfoTitle': return '購入/購入予定情報';
			case 'app.purchaseInfoCaption': return '以降の内容はグループ内の大人にだけ表示されます';
			case 'app.price': return '金額';
			case 'app.purchasePlanDateTime': return '購入予定日';
			case 'app.yenMark': return '¥';
			case 'app.surprise': return 'サプライズ';
			case 'app.surpriseCaption': return '状況を子供に知られたくない';
			case 'app.purchasePlanDateTimeCaption': return '入力すると「購入予定」になります';
			case 'app.sentAtCaption': return '入力すると「購入済」になります';
			case 'app.sentAt': return '渡した日';
			case 'app.authErrorMessage': return '認証エラーが発生しました。\nしばらく時間を置いてログインして下さい。';
			case 'app.account': return 'アカウント';
			case 'app.profile': return 'プロフィール';
			case 'app.group': return 'グループ';
			case 'app.help': return 'ヘルプ';
			case 'app.developperTwitter': return '開発者X (旧Twitter)';
			case 'app.license': return 'ライセンス';
			case 'app.urlErrorMessageCanNotOpen': return 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
			case 'app.joinGroup': return '参加グループ';
			case 'app.share': return '共有';
			case 'app.copy': return 'コピー';
			case 'app.shareCaption': return '共有してメンバーを招待しましょう';
			case 'app.groupShareText': return ({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}';
			case 'app.copied': return 'コピーしました';
			case 'app.saved': return '保存しました';
			case 'app.groupName': return 'グループ名';
			case 'app.deleteErrorMessageRequiredExists': return '作成したグループを全て削除することはできません。\n最低でも1件以上のグループが必要です。';
			case 'app.deleteErrorMessagePermission': return '削除を行う権限がありません。';
			case 'app.shareGroupHelpTitle': return 'グループの共有/参加';
			case 'app.shareGroupHelpMessage': return '【グループの共有】\nグループから「共有」を行って下さい\n\n【グループへの参加】\n共有されたURLをクリックするか、\nQRコードを読み取ることで参加できます';
			case 'app.addGroup': return 'グループを追加';
			case 'app.other': return 'その他';
			case 'app.logout': return 'ログアウト';
			case 'app.deleteAccount': return '退会';
			case 'app.google': return 'Google';
			case 'app.apple': return 'Apple';
			case 'app.notJoinedGroupMessage': return 'グループに所属していません。\nグループを作成するか、\n招待されたグループに参加して下さい。';
			case 'app.deletedUser': return '<削除済ユーザー>';
			case 'app.selectNumberText': return ({required int length}) => '${length}件選択';
			case 'app.authErrorMessageNotExistsProvider': return 'アカウントは1つ以上の外部アカウントとの連携をしておく必要があります。';
			case 'app.authErrorMessagAlreadyInUse': return 'このアカウントはすでに連携済です。\n別のアカウントを利用するか、一度ログアウトしてから連携して下さい。';
			case 'app.bullet': return '・';
			case 'app.notUseAnalytics': return '現在、ふりかえり機能はご利用頂けません。';
			case 'app.analyticsFeatureTitle': return 'ふりかえり機能では、以下の機能がご利用頂けます。';
			case 'app.priceAnalytics': return '金額の推移';
			case 'app.purchaseUserAnalytics': return '買ってくれた人の割合';
			case 'app.purchasedAnalytics': return '買ってもらった割合';
			case 'app.analyticsPublishPlan': return '※ 開発者のこどもが幼稚園に入るまでには公開します';
			case 'app.deleteAccountConfirmTitle': return '退会の確認';
			case 'app.deleteAccountConfirmMessage': return '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
			case 'app.joinedGroupTitle': return 'グループへ参加';
			case 'app.joinedGroupMessage': return 'グループに参加しました。';
			case 'app.leave': return '離脱';
			case 'app.select': return '選択';
			case 'app.wanterName': return 'だれがほしい？';
			case 'app.wanterNameChipTitle': return 'ほしい人';
			case 'app.businessErrorMessageOverItemCount': return '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
			case 'app.updateAppTitle': return 'アプリの更新';
			case 'app.updateAppMessage': return 'アプリの最新版がリリースされています。\nストアへ移動しますか？';
			case 'app.goStore': return 'ストアへ';
			case 'app.buyerName': return '購入した人';
			case 'app.howToUse': return '使い方';
			case 'app.joinPremiumGroup': return '欲しい物の登録数制限を解放';
			case 'app.joinedPremiumGroup': return '欲しい物の登録数制限が解放されました。(無制限)';
			case 'app.itemPurchase': return '商品の購入';
			case 'app.itemLimitReleaseMessage': return ({required String price, required String term}) => '商品を購入すると\n表示中のグループに登録できる\n欲しい物の制限が解放されます。\n(無料版は30個まで)\n\n価格：¥${price}(${term})';
			case 'app.purchaseOkLabel': return ({required String price}) => '購入(¥${price})';
			case 'app.lifeful': return '無期限';
			case 'app.darkMode': return 'ダークモード';
			case 'app.lightMode': return 'ライトモード';
			case 'app.purchaseRate': return '購入率';
			case 'app.purchaseRateAndPlan': return '購入率 (予定込)';
			case 'app.formatPercent': return ({required String percent}) => '${percent}%';
			case 'app.purchasePrice': return '購入金額';
			case 'app.formatMonth': return ({required int month}) => '${month}月';
			case 'app.formatFraction': return ({required int molecule, required int denominator}) => '${molecule}/${denominator}';
			case 'app.notificationAddItemTitle': return ({required String name}) => '${name}さんがほしいものを追加しました！';
			case 'app.notificationAddItemBody': return ({required String name}) => '${name}さんがほしいものを追加しました！';
			case 'app.pushNotification': return 'プッシュ通知';
			case 'app.pushNotificationDescription': return 'グループ内でほしいものが追加された場合に通知が受け取れます';
			case 'app.purchased': return '購入済';
			case 'settings.settingsPage.title': return '設定';
			case 'settings.settingsPage.account.head': return 'アカウント';
			case 'settings.settingsPage.account.account': return 'アカウント';
			case 'settings.settingsPage.layout.haed': return 'レイアウト';
			case 'settings.settingsPage.layout.uiStyle': return 'UIスタイル';
			case 'settings.settingsPage.layout.themeMode': return 'テーマモード';
			case 'settings.settingsPage.layout.colorTheme': return 'カラー';
			case 'settings.settingsPage.help.head': return 'ヘルプ';
			case 'settings.settingsPage.help.howToUse': return 'つかい方';
			case 'settings.settingsPage.help.contactUs': return 'お問い合わせ';
			case 'settings.settingsPage.help.developperTwitter': return '開発者情報';
			case 'settings.settingsPage.help.privacyPollicy': return 'プライバシーポリシー';
			case 'settings.settingsPage.help.licencse': return 'ライセンス';
			case 'settings.accountPage.title': return 'アカウント';
			case 'settings.accountPage.link.head': return 'アカウント連携';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'その他';
			case 'settings.accountPage.other.logout': return 'ログアウト';
			case 'settings.accountPage.other.leave': return '退会';
			case 'settings.accountPage.leaveConfirmDialog.title': return '退会しますか？';
			case 'settings.accountPage.leaveConfirmDialog.body': return '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
			default: return null;
		}
	}
}

