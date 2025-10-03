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
import 'package:packages_domain/user.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppJa app = _TranslationsAppJa._(_root);
	@override late final _TranslationsKEnumJa kEnum = _TranslationsKEnumJa._(_root);
}

// Path: app
class _TranslationsAppJa extends TranslationsAppEn {
	_TranslationsAppJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get start => 'はじめる';
	@override String get firstTime => 'はじめての方はこちら';
	@override String get accountLink => 'アカウント連携';
	@override String get contactUs => 'お問い合わせ';
	@override String get termOfService => '利用規約';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get accountLinkDescTitle => 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。';
	@override String get accountLinkDescBodyCloudBackup => 'クラウドへのデータバックアップ';
	@override String get accountLinkDescBodyMultiDevice => '複数端末での同時利用';
	@override String get accountLinkDescBodyDataSend => '端末変更に伴うデータ移行';
	@override String get onboardStartTitle => 'はじめに';
	@override String get onboardStartMessage => 'まずはプロフィールを登録しましょう';
	@override String get questionAgeGroup => 'あなたは？';
	@override String get questionSex => '性別は？';
	@override String get questionName => 'お名前は？';
	@override String get questionNameCapiton => 'または ニックネーム';
	@override String get questionConfirm => 'あっていますか？';
	@override String get selectChild => 'こども (買ってほしい)';
	@override String get selectAdult => 'おとな (買ってあげたい)';
	@override String get selectMan => 'おとこ';
	@override String get selectWoman => 'おんな';
	@override String get selectNeither => 'どちらでもない';
	@override String get nameLabel => '名前 または ニックネーム';
	@override String get name => '名前';
	@override String get next => '次へ';
	@override String get back => '戻る';
	@override String get prev => '前へ';
	@override String get skip => 'スキップ';
	@override String get sexMan => 'おとこ';
	@override String get sexWoman => 'おんな';
	@override String get sexNeither => 'どちらでもない';
	@override String get ageGroup => '年齢層';
	@override String get sex => '性別';
	@override String get unset => '<未設定>';
	@override String get requiredIcon => '*';
	@override String get requiredHelper => '*必須項目';
	@override String get signInWithGoogle => 'Googleでサインイン';
	@override String get signInWithApple => 'Appleでサインイン';
	@override String get wishList => 'ほしいもの';
	@override String get analyze => 'ふりかえり';
	@override String get settings => 'せってい';
	@override String get addWishList => 'ほしいものを追加';
	@override String get sortOrder => '並び替え';
	@override String get status => 'ステータス';
	@override String get wishRank => '欲しい度';
	@override String get cancel => 'キャンセル';
	@override String get reset => 'リセット';
	@override String get apply => '適用';
	@override String get all => 'すべて';
	@override String get noName => '名無し';
	@override String get groupInitialNameSuffix => ' のグループ';
	@override String get unexpectedErrorMessage => '予期せぬエラーが発生しました。';
	@override String searchEmptyMessage({required String item}) => '${item}が見つかりませんでした。';
	@override String get merchandiseName => '商品名';
	@override String get save => '保存';
	@override String editPageTitle({required String item}) => '${item}を編集';
	@override String createPageTitle({required String item}) => '${item}を作成';
	@override String get wishSeasonLabel => 'いつほしい？';
	@override String get wishSeasonHint => '例：クリスマス、誕生日';
	@override String get url => 'URL';
	@override String get addUrl => 'URLを追加';
	@override String get memo => 'メモ';
	@override String get shoot => '写真を撮る';
	@override String get chooseFromLibrary => 'ライブラリから画像を選択';
	@override String get star => '星';
	@override String get delete => '削除';
	@override String get deletedMessage => '削除済です。';
	@override String get completeDeleteMessage => '削除しました。';
	@override String get completeChangeGroupMessage => 'グループを切り替えました。';
	@override String get uploadImage => '写真のアップロード';
	@override String lackOfPermission({required String permission}) => '${permission}が許可されていません';
	@override String confirmPermissionOffTitle({required String permission}) => '${permission}をオフにしますか？';
	@override String confirmPermissionOffMessage({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
	@override String get permissionPhotos => 'ギャラリーへのアクセス';
	@override String get permissionCamera => 'カメラへのアクセス';
	@override String get permissionPushNotification => 'プッシュ通知';
	@override String permissionWarnMessage({required String permission}) => '設定アプリを開いて${permission}を許可してください';
	@override String get openSettingsApp => '設定アプリを開く';
	@override String get ok => 'OK';
	@override String get confirmDiscardChangesTitle => '変更を破棄しますか？';
	@override String get confirmDiscardChangesMessage => 'すべての変更は失われます';
	@override String get discard => '破棄';
	@override String get notDiscard => '破棄しない';
	@override String get validErrorMessageRequired => '必須項目を入力して下さい';
	@override String get validErrorMessageUrlPattern => '正しいURL形式で入力して下さい';
	@override String get edit => '編集';
	@override String get purchaseOrpurchasePlan => '購入/購入予定';
	@override String get deleteConfirmTitle => '削除の確認';
	@override String deleteCofirmMessage({required String item}) => '「${item}」を削除しますか？';
	@override String deleteGroupCofirmMessage({required String name}) => '「${name}」を削除しますか？\nグループに登録している欲しい物は全て削除されます。\nこの操作は元に戻すことができません。';
	@override String get leaveConfirmTitle => '離脱の確認';
	@override String leaveCofirmMessage({required String group}) => '「${group}」から離脱しますか？';
	@override String get notSelectedGroupDialogTitle => 'グループが選択されていません';
	@override String get notSelectedGroupDialogMessage => 'グループを選択してからほしいものを追加して下さい';
	@override String get purchaseInfoTitle => '購入/購入予定情報';
	@override String get purchaseInfoCaption => '以降の内容はグループ内の大人にだけ表示されます';
	@override String get price => '金額';
	@override String get purchasePlanDateTime => '購入予定日';
	@override String get yenMark => '¥';
	@override String get surprise => 'サプライズ';
	@override String get surpriseCaption => '状況を子供に知られたくない';
	@override String get purchasePlanDateTimeCaption => '入力すると「購入予定」になります';
	@override String get sentAtCaption => '入力すると「購入済」になります';
	@override String get sentAt => '渡した日';
	@override String get authErrorMessage => '認証エラーが発生しました。\nしばらく時間を置いてログインして下さい。';
	@override String get account => 'アカウント';
	@override String get profile => 'プロフィール';
	@override String get group => 'グループ';
	@override String get help => 'ヘルプ';
	@override String get developperTwitter => '開発者X (旧Twitter)';
	@override String get license => 'ライセンス';
	@override String get error => 'エラー';
	@override String get urlErrorMessageCanNotOpen => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';
	@override String get joinGroup => '参加グループ';
	@override String get share => '共有';
	@override String get copy => 'コピー';
	@override String get shareCaption => '共有してメンバーを招待しましょう';
	@override String groupShareText({required String user, required String group, required String url}) => '${user}さんから${group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n${url}';
	@override String get copied => 'コピーしました';
	@override String get saved => '保存しました';
	@override String get groupName => 'グループ名';
	@override String get deleteErrorMessageRequiredExists => '作成したグループを全て削除することはできません。\n最低でも1件以上のグループが必要です。';
	@override String get deleteErrorMessagePermission => '削除を行う権限がありません。';
	@override String get shareGroupHelpTitle => 'グループの共有/参加';
	@override String get shareGroupHelpMessage => '【グループの共有】\nグループから「共有」を行って下さい\n\n【グループへの参加】\n共有されたURLをクリックするか、\nQRコードを読み取ることで参加できます';
	@override String get addGroup => 'グループを追加';
	@override String get other => 'その他';
	@override String get logout => 'ログアウト';
	@override String get deleteAccount => '退会';
	@override String get google => 'Google';
	@override String get apple => 'Apple';
	@override String get notJoinedGroupMessage => 'グループに所属していません。\nグループを作成するか、\n招待されたグループに参加して下さい。';
	@override String get deletedUser => '<削除済ユーザー>';
	@override String selectNumberText({required int length}) => '${length}件選択';
	@override String get authErrorMessageNotExistsProvider => 'アカウントは1つ以上の外部アカウントとの連携をしておく必要があります。';
	@override String get authErrorMessagAlreadyInUse => 'このアカウントはすでに連携済です。\n別のアカウントを利用するか、一度ログアウトしてから連携して下さい。';
	@override String get bullet => '・';
	@override String get notUseAnalytics => '現在、ふりかえり機能はご利用頂けません。';
	@override String get analyticsFeatureTitle => 'ふりかえり機能では、以下の機能がご利用頂けます。';
	@override String get priceAnalytics => '金額の推移';
	@override String get purchaseUserAnalytics => '買ってくれた人の割合';
	@override String get purchasedAnalytics => '買ってもらった割合';
	@override String get analyticsPublishPlan => '※ 開発者のこどもが幼稚園に入るまでには公開します';
	@override String get deleteAccountConfirmTitle => '退会の確認';
	@override String get deleteAccountConfirmMessage => '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';
	@override String get joinedGroupTitle => 'グループへ参加';
	@override String get joinedGroupMessage => 'グループに参加しました。';
	@override String get joinGroupErrorMessageInvalidShareLink => '招待リンクが正しくありません。';
	@override String get joinGroupErrorMessageJoinedGroup => 'すでに参加しています。';
	@override String get joinGroupErrorMessageInvalidDate => '招待リンクの有効期限が切れています。';
	@override String get joinGroupErrorMessageNotAuth => '認証エラーが発生しました。';
	@override String get joinGroupErrorMessageLimitOver => 'グループの参加上限(5件)に達しました。';
	@override String get leave => '離脱';
	@override String get select => '選択';
	@override String get wanterName => 'だれがほしい？';
	@override String get wanterNameChipTitle => 'ほしい人';
	@override String get businessErrorMessageOverItemCount => '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';
	@override String get updateAppTitle => 'アプリの更新';
	@override String get updateAppMessage => 'アプリの最新版がリリースされています。\nストアへ移動しますか？';
	@override String get goStore => 'ストアへ';
	@override String get buyerName => '購入した人';
	@override String get howToUse => '使い方';
	@override String get joinPremiumGroup => '欲しい物の登録数制限を解放';
	@override String get joinedPremiumGroup => '欲しい物の登録数制限が解放されました。(無制限)';
	@override String get itemPurchase => '商品の購入';
	@override String itemLimitReleaseMessage({required String price, required String term}) => '商品を購入すると\n表示中のグループに登録できる\n欲しい物の制限が解放されます。\n(無料版は30個まで)\n\n価格：¥${price}(${term})';
	@override String purchaseOkLabel({required String price}) => '購入(¥${price})';
	@override String get lifeful => '無期限';
	@override String get darkMode => 'ダークモード';
	@override String get lightMode => 'ライトモード';
	@override String get purchaseRate => '購入率';
	@override String get purchaseRateAndPlan => '購入率 (予定込)';
	@override String formatPercent({required String percent}) => '${percent}%';
	@override String get purchasePrice => '購入金額';
	@override String formatMonth({required int month}) => '${month}月';
	@override String formatFraction({required int molecule, required int denominator}) => '${molecule}/${denominator}';
	@override String notificationAddItemTitle({required String name}) => '${name}さんがほしいものを追加しました！';
	@override String notificationAddItemBody({required String name}) => '${name}さんがほしいものを追加しました！';
	@override String get pushNotification => 'プッシュ通知';
	@override String get pushNotificationDescription => 'グループ内でほしいものが追加された場合に通知が受け取れます';
	@override String get purchased => '購入済';
}

// Path: kEnum
class _TranslationsKEnumJa extends TranslationsKEnumEn {
	_TranslationsKEnumJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String uiStyle({required UIStyle context}) {
		switch (context) {
			case UIStyle.system:
				return 'システム設定';
			case UIStyle.android:
				return 'Android';
			case UIStyle.ios:
				return 'iOS';
		}
	}
	@override String themeColor({required ThemeColor context}) {
		switch (context) {
			case ThemeColor.dynamicColor:
				return 'ダイナミックカラー';
			case ThemeColor.monochrome:
				return 'モノクロ';
			case ThemeColor.blue:
				return 'ブルー';
			case ThemeColor.purple:
				return 'パープル';
			case ThemeColor.green:
				return 'グリーン';
			case ThemeColor.red:
				return 'レッド';
			case ThemeColor.pink:
				return 'ピンク';
			case ThemeColor.yellow:
				return 'イエロー';
			case ThemeColor.orange:
				return 'オレンジ';
		}
	}
	@override String themeMode({required ThemeMode context}) {
		switch (context) {
			case ThemeMode.system:
				return 'システムテーマ';
			case ThemeMode.light:
				return 'ライトテーマ';
			case ThemeMode.dark:
				return 'ダークテーマ';
		}
	}
	@override late final _TranslationsKEnumViewLayoutJa viewLayout = _TranslationsKEnumViewLayoutJa._(_root);
	@override String sortOrder({required SortOrder context}) {
		switch (context) {
			case SortOrder.asc:
				return '昇順';
			case SortOrder.desc:
				return '降順';
		}
	}
	@override late final _TranslationsKEnumAppUpdateJa appUpdate = _TranslationsKEnumAppUpdateJa._(_root);
	@override String itemOrderKey({required ItemOrderKey context}) {
		switch (context) {
			case ItemOrderKey.createdAt:
				return '作成日時';
			case ItemOrderKey.name:
				return '名前';
			case ItemOrderKey.wishRank:
				return '欲しい度';
		}
	}
	@override String ageGroup({required AgeGroup context}) {
		switch (context) {
			case AgeGroup.child:
				return 'こども';
			case AgeGroup.adult:
				return 'おとな';
		}
	}
	@override String purchaseStatus({required PurchaseStatus context}) {
		switch (context) {
			case PurchaseStatus.notPurchased:
				return '未購入';
			case PurchaseStatus.purchasePlan:
				return '購入予定';
			case PurchaseStatus.purchased:
				return '購入済';
		}
	}
}

// Path: kEnum.viewLayout
class _TranslationsKEnumViewLayoutJa extends TranslationsKEnumViewLayoutEn {
	_TranslationsKEnumViewLayoutJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '表示形式';
	@override String typeName({required ViewLayout context}) {
		switch (context) {
			case ViewLayout.grid:
				return 'グリッド表示';
			case ViewLayout.list:
				return 'リスト表示';
		}
	}
}

// Path: kEnum.appUpdate
class _TranslationsKEnumAppUpdateJa extends TranslationsKEnumAppUpdateEn {
	_TranslationsKEnumAppUpdateJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsKEnumAppUpdateUpdatePossibleJa updatePossible = _TranslationsKEnumAppUpdateUpdatePossibleJa._(_root);
	@override late final _TranslationsKEnumAppUpdateForceUpdateJa forceUpdate = _TranslationsKEnumAppUpdateForceUpdateJa._(_root);
	@override String get navigateStore => 'ストアを開く';
}

// Path: kEnum.appUpdate.updatePossible
class _TranslationsKEnumAppUpdateUpdatePossibleJa extends TranslationsKEnumAppUpdateUpdatePossibleEn {
	_TranslationsKEnumAppUpdateUpdatePossibleJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get message => '新しいバージョンが公開されています。\nアップデートを行うと、新しい機能をご利用いただけます。\nアップデートを行いますか？';
}

// Path: kEnum.appUpdate.forceUpdate
class _TranslationsKEnumAppUpdateForceUpdateJa extends TranslationsKEnumAppUpdateForceUpdateEn {
	_TranslationsKEnumAppUpdateForceUpdateJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get message => 'ご利用のバージョンは現在ご利用出来ません。\nストアから新しいバージョンをご利用下さい。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
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
			case 'app.unset': return '<未設定>';
			case 'app.requiredIcon': return '*';
			case 'app.requiredHelper': return '*必須項目';
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
			case 'app.save': return '保存';
			case 'app.editPageTitle': return ({required String item}) => '${item}を編集';
			case 'app.createPageTitle': return ({required String item}) => '${item}を作成';
			case 'app.wishSeasonLabel': return 'いつほしい？';
			case 'app.wishSeasonHint': return '例：クリスマス、誕生日';
			case 'app.url': return 'URL';
			case 'app.addUrl': return 'URLを追加';
			case 'app.memo': return 'メモ';
			case 'app.shoot': return '写真を撮る';
			case 'app.chooseFromLibrary': return 'ライブラリから画像を選択';
			case 'app.star': return '星';
			case 'app.delete': return '削除';
			case 'app.deletedMessage': return '削除済です。';
			case 'app.completeDeleteMessage': return '削除しました。';
			case 'app.completeChangeGroupMessage': return 'グループを切り替えました。';
			case 'app.uploadImage': return '写真のアップロード';
			case 'app.lackOfPermission': return ({required String permission}) => '${permission}が許可されていません';
			case 'app.confirmPermissionOffTitle': return ({required String permission}) => '${permission}をオフにしますか？';
			case 'app.confirmPermissionOffMessage': return ({required String permission}) => '設定アプリを開いて${permission}をオフにしてください';
			case 'app.permissionPhotos': return 'ギャラリーへのアクセス';
			case 'app.permissionCamera': return 'カメラへのアクセス';
			case 'app.permissionPushNotification': return 'プッシュ通知';
			case 'app.permissionWarnMessage': return ({required String permission}) => '設定アプリを開いて${permission}を許可してください';
			case 'app.openSettingsApp': return '設定アプリを開く';
			case 'app.ok': return 'OK';
			case 'app.confirmDiscardChangesTitle': return '変更を破棄しますか？';
			case 'app.confirmDiscardChangesMessage': return 'すべての変更は失われます';
			case 'app.discard': return '破棄';
			case 'app.notDiscard': return '破棄しない';
			case 'app.validErrorMessageRequired': return '必須項目を入力して下さい';
			case 'app.validErrorMessageUrlPattern': return '正しいURL形式で入力して下さい';
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
			case 'app.error': return 'エラー';
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
			case 'app.joinGroupErrorMessageInvalidShareLink': return '招待リンクが正しくありません。';
			case 'app.joinGroupErrorMessageJoinedGroup': return 'すでに参加しています。';
			case 'app.joinGroupErrorMessageInvalidDate': return '招待リンクの有効期限が切れています。';
			case 'app.joinGroupErrorMessageNotAuth': return '認証エラーが発生しました。';
			case 'app.joinGroupErrorMessageLimitOver': return 'グループの参加上限(5件)に達しました。';
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
			case 'kEnum.uiStyle': return ({required UIStyle context}) {
				switch (context) {
					case UIStyle.system:
						return 'システム設定';
					case UIStyle.android:
						return 'Android';
					case UIStyle.ios:
						return 'iOS';
				}
			};
			case 'kEnum.themeColor': return ({required ThemeColor context}) {
				switch (context) {
					case ThemeColor.dynamicColor:
						return 'ダイナミックカラー';
					case ThemeColor.monochrome:
						return 'モノクロ';
					case ThemeColor.blue:
						return 'ブルー';
					case ThemeColor.purple:
						return 'パープル';
					case ThemeColor.green:
						return 'グリーン';
					case ThemeColor.red:
						return 'レッド';
					case ThemeColor.pink:
						return 'ピンク';
					case ThemeColor.yellow:
						return 'イエロー';
					case ThemeColor.orange:
						return 'オレンジ';
				}
			};
			case 'kEnum.themeMode': return ({required ThemeMode context}) {
				switch (context) {
					case ThemeMode.system:
						return 'システムテーマ';
					case ThemeMode.light:
						return 'ライトテーマ';
					case ThemeMode.dark:
						return 'ダークテーマ';
				}
			};
			case 'kEnum.viewLayout.name': return '表示形式';
			case 'kEnum.viewLayout.typeName': return ({required ViewLayout context}) {
				switch (context) {
					case ViewLayout.grid:
						return 'グリッド表示';
					case ViewLayout.list:
						return 'リスト表示';
				}
			};
			case 'kEnum.sortOrder': return ({required SortOrder context}) {
				switch (context) {
					case SortOrder.asc:
						return '昇順';
					case SortOrder.desc:
						return '降順';
				}
			};
			case 'kEnum.appUpdate.updatePossible.message': return '新しいバージョンが公開されています。\nアップデートを行うと、新しい機能をご利用いただけます。\nアップデートを行いますか？';
			case 'kEnum.appUpdate.forceUpdate.message': return 'ご利用のバージョンは現在ご利用出来ません。\nストアから新しいバージョンをご利用下さい。';
			case 'kEnum.appUpdate.navigateStore': return 'ストアを開く';
			case 'kEnum.itemOrderKey': return ({required ItemOrderKey context}) {
				switch (context) {
					case ItemOrderKey.createdAt:
						return '作成日時';
					case ItemOrderKey.name:
						return '名前';
					case ItemOrderKey.wishRank:
						return '欲しい度';
				}
			};
			case 'kEnum.ageGroup': return ({required AgeGroup context}) {
				switch (context) {
					case AgeGroup.child:
						return 'こども';
					case AgeGroup.adult:
						return 'おとな';
				}
			};
			case 'kEnum.purchaseStatus': return ({required PurchaseStatus context}) {
				switch (context) {
					case PurchaseStatus.notPurchased:
						return '未購入';
					case PurchaseStatus.purchasePlan:
						return '購入予定';
					case PurchaseStatus.purchased:
						return '購入済';
				}
			};
			default: return null;
		}
	}
}

