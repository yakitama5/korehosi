import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n? of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja')
  ];

  /// No description provided for @start.
  ///
  /// In ja, this message translates to:
  /// **'はじめる'**
  String get start;

  /// No description provided for @firstTime.
  ///
  /// In ja, this message translates to:
  /// **'はじめての方はこちら'**
  String get firstTime;

  /// No description provided for @accountLink.
  ///
  /// In ja, this message translates to:
  /// **'アカウント連携'**
  String get accountLink;

  /// No description provided for @contactUs.
  ///
  /// In ja, this message translates to:
  /// **'お問い合わせ'**
  String get contactUs;

  /// No description provided for @termOfService.
  ///
  /// In ja, this message translates to:
  /// **'利用規約'**
  String get termOfService;

  /// No description provided for @privacyPolicy.
  ///
  /// In ja, this message translates to:
  /// **'プライバシーポリシー'**
  String get privacyPolicy;

  /// No description provided for @accountLinkDescTitle.
  ///
  /// In ja, this message translates to:
  /// **'アカウント連携を行うことで、\n下記の機能をご利用いただけます。'**
  String get accountLinkDescTitle;

  /// No description provided for @accountLinkDescBodyCloudBackup.
  ///
  /// In ja, this message translates to:
  /// **'クラウドへのデータバックアップ'**
  String get accountLinkDescBodyCloudBackup;

  /// No description provided for @accountLinkDescBodyMultiDevice.
  ///
  /// In ja, this message translates to:
  /// **'複数端末での同時利用'**
  String get accountLinkDescBodyMultiDevice;

  /// No description provided for @accountLinkDescBodyDataSend.
  ///
  /// In ja, this message translates to:
  /// **'端末変更に伴うデータ移行'**
  String get accountLinkDescBodyDataSend;

  /// No description provided for @onboardStartTitle.
  ///
  /// In ja, this message translates to:
  /// **'はじめに'**
  String get onboardStartTitle;

  /// No description provided for @onboardStartMessage.
  ///
  /// In ja, this message translates to:
  /// **'まずはプロフィールを登録しましょう'**
  String get onboardStartMessage;

  /// No description provided for @questionAgeGroup.
  ///
  /// In ja, this message translates to:
  /// **'あなたは？'**
  String get questionAgeGroup;

  /// No description provided for @questionSex.
  ///
  /// In ja, this message translates to:
  /// **'性別は？'**
  String get questionSex;

  /// No description provided for @questionName.
  ///
  /// In ja, this message translates to:
  /// **'お名前は？'**
  String get questionName;

  /// No description provided for @questionNameCapiton.
  ///
  /// In ja, this message translates to:
  /// **'または ニックネーム'**
  String get questionNameCapiton;

  /// No description provided for @questionConfirm.
  ///
  /// In ja, this message translates to:
  /// **'あっていますか？'**
  String get questionConfirm;

  /// No description provided for @selectChild.
  ///
  /// In ja, this message translates to:
  /// **'こども (買ってほしい)'**
  String get selectChild;

  /// No description provided for @selectAdult.
  ///
  /// In ja, this message translates to:
  /// **'おとな (買ってあげたい)'**
  String get selectAdult;

  /// No description provided for @selectMan.
  ///
  /// In ja, this message translates to:
  /// **'おとこ'**
  String get selectMan;

  /// No description provided for @selectWoman.
  ///
  /// In ja, this message translates to:
  /// **'おんな'**
  String get selectWoman;

  /// No description provided for @selectNeither.
  ///
  /// In ja, this message translates to:
  /// **'どちらでもない'**
  String get selectNeither;

  /// No description provided for @nameLabel.
  ///
  /// In ja, this message translates to:
  /// **'名前 または ニックネーム'**
  String get nameLabel;

  /// No description provided for @name.
  ///
  /// In ja, this message translates to:
  /// **'名前'**
  String get name;

  /// No description provided for @next.
  ///
  /// In ja, this message translates to:
  /// **'次へ'**
  String get next;

  /// No description provided for @back.
  ///
  /// In ja, this message translates to:
  /// **'戻る'**
  String get back;

  /// No description provided for @prev.
  ///
  /// In ja, this message translates to:
  /// **'前へ'**
  String get prev;

  /// No description provided for @skip.
  ///
  /// In ja, this message translates to:
  /// **'スキップ'**
  String get skip;

  /// No description provided for @sexMan.
  ///
  /// In ja, this message translates to:
  /// **'おとこ'**
  String get sexMan;

  /// No description provided for @sexWoman.
  ///
  /// In ja, this message translates to:
  /// **'おんな'**
  String get sexWoman;

  /// No description provided for @sexNeither.
  ///
  /// In ja, this message translates to:
  /// **'どちらでもない'**
  String get sexNeither;

  /// No description provided for @ageGroupChild.
  ///
  /// In ja, this message translates to:
  /// **'こども'**
  String get ageGroupChild;

  /// No description provided for @ageGroupAdult.
  ///
  /// In ja, this message translates to:
  /// **'おとな'**
  String get ageGroupAdult;

  /// No description provided for @ageGroup.
  ///
  /// In ja, this message translates to:
  /// **'年齢層'**
  String get ageGroup;

  /// No description provided for @sex.
  ///
  /// In ja, this message translates to:
  /// **'性別'**
  String get sex;

  /// No description provided for @unset.
  ///
  /// In ja, this message translates to:
  /// **'<未設定>'**
  String get unset;

  /// No description provided for @requiredIcon.
  ///
  /// In ja, this message translates to:
  /// **'*'**
  String get requiredIcon;

  /// No description provided for @requiredHelper.
  ///
  /// In ja, this message translates to:
  /// **'*必須項目'**
  String get requiredHelper;

  /// No description provided for @signInWithGoogle.
  ///
  /// In ja, this message translates to:
  /// **'Googleでサインイン'**
  String get signInWithGoogle;

  /// No description provided for @signInWithApple.
  ///
  /// In ja, this message translates to:
  /// **'Appleでサインイン'**
  String get signInWithApple;

  /// No description provided for @wishList.
  ///
  /// In ja, this message translates to:
  /// **'ほしいもの'**
  String get wishList;

  /// No description provided for @analyze.
  ///
  /// In ja, this message translates to:
  /// **'ふりかえり'**
  String get analyze;

  /// No description provided for @settings.
  ///
  /// In ja, this message translates to:
  /// **'せってい'**
  String get settings;

  /// No description provided for @addWishList.
  ///
  /// In ja, this message translates to:
  /// **'ほしいものを追加'**
  String get addWishList;

  /// No description provided for @orderKeyName.
  ///
  /// In ja, this message translates to:
  /// **'名前'**
  String get orderKeyName;

  /// No description provided for @orderKeyWishRank.
  ///
  /// In ja, this message translates to:
  /// **'欲しい度'**
  String get orderKeyWishRank;

  /// No description provided for @orderKeyCreatedAt.
  ///
  /// In ja, this message translates to:
  /// **'作成日'**
  String get orderKeyCreatedAt;

  /// No description provided for @orderKeyUpdatedAt.
  ///
  /// In ja, this message translates to:
  /// **'更新日'**
  String get orderKeyUpdatedAt;

  /// No description provided for @sortOrder.
  ///
  /// In ja, this message translates to:
  /// **'並び替え'**
  String get sortOrder;

  /// No description provided for @sortOrderAsc.
  ///
  /// In ja, this message translates to:
  /// **'昇順'**
  String get sortOrderAsc;

  /// No description provided for @sortOrderDesc.
  ///
  /// In ja, this message translates to:
  /// **'降順'**
  String get sortOrderDesc;

  /// No description provided for @status.
  ///
  /// In ja, this message translates to:
  /// **'ステータス'**
  String get status;

  /// No description provided for @wishRank.
  ///
  /// In ja, this message translates to:
  /// **'欲しい度'**
  String get wishRank;

  /// No description provided for @cancel.
  ///
  /// In ja, this message translates to:
  /// **'キャンセル'**
  String get cancel;

  /// No description provided for @reset.
  ///
  /// In ja, this message translates to:
  /// **'リセット'**
  String get reset;

  /// No description provided for @apply.
  ///
  /// In ja, this message translates to:
  /// **'適用'**
  String get apply;

  /// No description provided for @notPurchased.
  ///
  /// In ja, this message translates to:
  /// **'未購入'**
  String get notPurchased;

  /// No description provided for @purchasePlan.
  ///
  /// In ja, this message translates to:
  /// **'購入予定'**
  String get purchasePlan;

  /// No description provided for @purchased.
  ///
  /// In ja, this message translates to:
  /// **'購入済'**
  String get purchased;

  /// No description provided for @all.
  ///
  /// In ja, this message translates to:
  /// **'すべて'**
  String get all;

  /// No description provided for @noName.
  ///
  /// In ja, this message translates to:
  /// **'名無し'**
  String get noName;

  /// No description provided for @groupInitialNameSuffix.
  ///
  /// In ja, this message translates to:
  /// **' のグループ'**
  String get groupInitialNameSuffix;

  /// No description provided for @unexpectedErrorMessage.
  ///
  /// In ja, this message translates to:
  /// **'予期せぬエラーが発生しました。'**
  String get unexpectedErrorMessage;

  /// No description provided for @searchEmptyMessage.
  ///
  /// In ja, this message translates to:
  /// **'{item}が見つかりませんでした。'**
  String searchEmptyMessage(String item);

  /// No description provided for @merchandiseName.
  ///
  /// In ja, this message translates to:
  /// **'商品名'**
  String get merchandiseName;

  /// No description provided for @save.
  ///
  /// In ja, this message translates to:
  /// **'保存'**
  String get save;

  /// No description provided for @editPageTitle.
  ///
  /// In ja, this message translates to:
  /// **'{item}を編集'**
  String editPageTitle(String item);

  /// No description provided for @createPageTitle.
  ///
  /// In ja, this message translates to:
  /// **'{item}を作成'**
  String createPageTitle(Object item);

  /// No description provided for @wishSeasonLabel.
  ///
  /// In ja, this message translates to:
  /// **'いつほしい？'**
  String get wishSeasonLabel;

  /// No description provided for @wishSeasonHint.
  ///
  /// In ja, this message translates to:
  /// **'例：クリスマス、誕生日'**
  String get wishSeasonHint;

  /// No description provided for @url.
  ///
  /// In ja, this message translates to:
  /// **'URL'**
  String get url;

  /// No description provided for @addUrl.
  ///
  /// In ja, this message translates to:
  /// **'URLを追加'**
  String get addUrl;

  /// No description provided for @memo.
  ///
  /// In ja, this message translates to:
  /// **'メモ'**
  String get memo;

  /// No description provided for @shoot.
  ///
  /// In ja, this message translates to:
  /// **'写真を撮る'**
  String get shoot;

  /// No description provided for @chooseFromLibrary.
  ///
  /// In ja, this message translates to:
  /// **'ライブラリから画像を選択'**
  String get chooseFromLibrary;

  /// No description provided for @star.
  ///
  /// In ja, this message translates to:
  /// **'星'**
  String get star;

  /// No description provided for @delete.
  ///
  /// In ja, this message translates to:
  /// **'削除'**
  String get delete;

  /// No description provided for @deletedMessage.
  ///
  /// In ja, this message translates to:
  /// **'削除済です。'**
  String get deletedMessage;

  /// No description provided for @completeDeleteMessage.
  ///
  /// In ja, this message translates to:
  /// **'削除しました。'**
  String get completeDeleteMessage;

  /// No description provided for @completeChangeGroupMessage.
  ///
  /// In ja, this message translates to:
  /// **'グループを切り替えました。'**
  String get completeChangeGroupMessage;

  /// No description provided for @uploadImage.
  ///
  /// In ja, this message translates to:
  /// **'写真のアップロード'**
  String get uploadImage;

  /// No description provided for @lackOfPermission.
  ///
  /// In ja, this message translates to:
  /// **'{permission}が許可されていません'**
  String lackOfPermission(Object permission);

  /// No description provided for @confirmPermissionOffTitle.
  ///
  /// In ja, this message translates to:
  /// **'{permission}をオフにしますか？'**
  String confirmPermissionOffTitle(Object permission);

  /// No description provided for @confirmPermissionOffMessage.
  ///
  /// In ja, this message translates to:
  /// **'設定アプリを開いて{permission}をオフにしてください'**
  String confirmPermissionOffMessage(Object permission);

  /// No description provided for @permissionPhotos.
  ///
  /// In ja, this message translates to:
  /// **'ギャラリーへのアクセス'**
  String get permissionPhotos;

  /// No description provided for @permissionCamera.
  ///
  /// In ja, this message translates to:
  /// **'カメラへのアクセス'**
  String get permissionCamera;

  /// No description provided for @permissionPushNotification.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知'**
  String get permissionPushNotification;

  /// No description provided for @permissionWarnMessage.
  ///
  /// In ja, this message translates to:
  /// **'設定アプリを開いて{permission}を許可してください'**
  String permissionWarnMessage(Object permission);

  /// No description provided for @openSettingsApp.
  ///
  /// In ja, this message translates to:
  /// **'設定アプリを開く'**
  String get openSettingsApp;

  /// No description provided for @ok.
  ///
  /// In ja, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @confirmDiscardChangesTitle.
  ///
  /// In ja, this message translates to:
  /// **'変更を破棄しますか？'**
  String get confirmDiscardChangesTitle;

  /// No description provided for @confirmDiscardChangesMessage.
  ///
  /// In ja, this message translates to:
  /// **'すべての変更は失われます'**
  String get confirmDiscardChangesMessage;

  /// No description provided for @discard.
  ///
  /// In ja, this message translates to:
  /// **'破棄'**
  String get discard;

  /// No description provided for @notDiscard.
  ///
  /// In ja, this message translates to:
  /// **'破棄しない'**
  String get notDiscard;

  /// No description provided for @validErrorMessageRequired.
  ///
  /// In ja, this message translates to:
  /// **'必須項目を入力して下さい'**
  String get validErrorMessageRequired;

  /// No description provided for @validErrorMessageUrlPattern.
  ///
  /// In ja, this message translates to:
  /// **'正しいURL形式で入力して下さい'**
  String get validErrorMessageUrlPattern;

  /// No description provided for @edit.
  ///
  /// In ja, this message translates to:
  /// **'編集'**
  String get edit;

  /// No description provided for @purchaseOrpurchasePlan.
  ///
  /// In ja, this message translates to:
  /// **'購入/購入予定'**
  String get purchaseOrpurchasePlan;

  /// No description provided for @deleteConfirmTitle.
  ///
  /// In ja, this message translates to:
  /// **'削除の確認'**
  String get deleteConfirmTitle;

  /// No description provided for @deleteCofirmMessage.
  ///
  /// In ja, this message translates to:
  /// **'「{item}」を削除しますか？'**
  String deleteCofirmMessage(Object item);

  /// No description provided for @deleteGroupCofirmMessage.
  ///
  /// In ja, this message translates to:
  /// **'「{name}」を削除しますか？\nグループに登録している欲しい物は全て削除されます。\nこの操作は元に戻すことができません。'**
  String deleteGroupCofirmMessage(Object name);

  /// No description provided for @leaveConfirmTitle.
  ///
  /// In ja, this message translates to:
  /// **'離脱の確認'**
  String get leaveConfirmTitle;

  /// No description provided for @leaveCofirmMessage.
  ///
  /// In ja, this message translates to:
  /// **'「{group}」から離脱しますか？'**
  String leaveCofirmMessage(Object group);

  /// Not selected group dialog title
  ///
  /// In ja, this message translates to:
  /// **'グループが選択されていません'**
  String get notSelectedGroupDialogTitle;

  /// Not selected group dialog message
  ///
  /// In ja, this message translates to:
  /// **'グループを選択してからほしいものを追加して下さい'**
  String get notSelectedGroupDialogMessage;

  /// No description provided for @purchaseInfoTitle.
  ///
  /// In ja, this message translates to:
  /// **'購入/購入予定情報'**
  String get purchaseInfoTitle;

  /// No description provided for @purchaseInfoCaption.
  ///
  /// In ja, this message translates to:
  /// **'以降の内容はグループ内の大人にだけ表示されます'**
  String get purchaseInfoCaption;

  /// No description provided for @price.
  ///
  /// In ja, this message translates to:
  /// **'金額'**
  String get price;

  /// No description provided for @purchasePlanDateTime.
  ///
  /// In ja, this message translates to:
  /// **'購入予定日'**
  String get purchasePlanDateTime;

  /// No description provided for @yenMark.
  ///
  /// In ja, this message translates to:
  /// **'¥'**
  String get yenMark;

  /// No description provided for @surprise.
  ///
  /// In ja, this message translates to:
  /// **'サプライズ'**
  String get surprise;

  /// No description provided for @surpriseCaption.
  ///
  /// In ja, this message translates to:
  /// **'状況を子供に知られたくない'**
  String get surpriseCaption;

  /// No description provided for @purchasePlanDateTimeCaption.
  ///
  /// In ja, this message translates to:
  /// **'入力すると「購入予定」になります'**
  String get purchasePlanDateTimeCaption;

  /// No description provided for @sentAtCaption.
  ///
  /// In ja, this message translates to:
  /// **'入力すると「購入済」になります'**
  String get sentAtCaption;

  /// No description provided for @sentAt.
  ///
  /// In ja, this message translates to:
  /// **'渡した日'**
  String get sentAt;

  /// No description provided for @authErrorMessage.
  ///
  /// In ja, this message translates to:
  /// **'認証エラーが発生しました。\nしばらく時間を置いてログインして下さい。'**
  String get authErrorMessage;

  /// No description provided for @account.
  ///
  /// In ja, this message translates to:
  /// **'アカウント'**
  String get account;

  /// No description provided for @profile.
  ///
  /// In ja, this message translates to:
  /// **'プロフィール'**
  String get profile;

  /// No description provided for @group.
  ///
  /// In ja, this message translates to:
  /// **'グループ'**
  String get group;

  /// No description provided for @help.
  ///
  /// In ja, this message translates to:
  /// **'ヘルプ'**
  String get help;

  /// No description provided for @developperTwitter.
  ///
  /// In ja, this message translates to:
  /// **'開発者X (旧Twitter)'**
  String get developperTwitter;

  /// No description provided for @license.
  ///
  /// In ja, this message translates to:
  /// **'ライセンス'**
  String get license;

  /// No description provided for @error.
  ///
  /// In ja, this message translates to:
  /// **'エラー'**
  String get error;

  /// No description provided for @urlErrorMessageCanNotOpen.
  ///
  /// In ja, this message translates to:
  /// **'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。'**
  String get urlErrorMessageCanNotOpen;

  /// No description provided for @joinGroup.
  ///
  /// In ja, this message translates to:
  /// **'参加グループ'**
  String get joinGroup;

  /// No description provided for @share.
  ///
  /// In ja, this message translates to:
  /// **'共有'**
  String get share;

  /// No description provided for @copy.
  ///
  /// In ja, this message translates to:
  /// **'コピー'**
  String get copy;

  /// No description provided for @shareCaption.
  ///
  /// In ja, this message translates to:
  /// **'共有してメンバーを招待しましょう'**
  String get shareCaption;

  /// No description provided for @groupShareText.
  ///
  /// In ja, this message translates to:
  /// **'{user}さんから{group}へ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n{url}'**
  String groupShareText(Object user, Object group, Object url);

  /// No description provided for @copied.
  ///
  /// In ja, this message translates to:
  /// **'コピーしました'**
  String get copied;

  /// No description provided for @saved.
  ///
  /// In ja, this message translates to:
  /// **'保存しました'**
  String get saved;

  /// No description provided for @groupName.
  ///
  /// In ja, this message translates to:
  /// **'グループ名'**
  String get groupName;

  /// No description provided for @deleteErrorMessageRequiredExists.
  ///
  /// In ja, this message translates to:
  /// **'作成したグループを全て削除することはできません。\n最低でも1件以上のグループが必要です。'**
  String get deleteErrorMessageRequiredExists;

  /// No description provided for @deleteErrorMessagePermission.
  ///
  /// In ja, this message translates to:
  /// **'削除を行う権限がありません。'**
  String get deleteErrorMessagePermission;

  /// No description provided for @shareGroupHelpTitle.
  ///
  /// In ja, this message translates to:
  /// **'グループの共有/参加'**
  String get shareGroupHelpTitle;

  /// No description provided for @shareGroupHelpMessage.
  ///
  /// In ja, this message translates to:
  /// **'【グループの共有】\nグループから「共有」を行って下さい\n\n【グループへの参加】\n共有されたURLをクリックするか、\nQRコードを読み取ることで参加できます'**
  String get shareGroupHelpMessage;

  /// No description provided for @addGroup.
  ///
  /// In ja, this message translates to:
  /// **'グループを追加'**
  String get addGroup;

  /// No description provided for @other.
  ///
  /// In ja, this message translates to:
  /// **'その他'**
  String get other;

  /// No description provided for @logout.
  ///
  /// In ja, this message translates to:
  /// **'ログアウト'**
  String get logout;

  /// No description provided for @deleteAccount.
  ///
  /// In ja, this message translates to:
  /// **'退会'**
  String get deleteAccount;

  /// No description provided for @google.
  ///
  /// In ja, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @apple.
  ///
  /// In ja, this message translates to:
  /// **'Apple'**
  String get apple;

  /// No description provided for @notJoinedGroupMessage.
  ///
  /// In ja, this message translates to:
  /// **'グループに所属していません。\nグループを作成するか、\n招待されたグループに参加して下さい。'**
  String get notJoinedGroupMessage;

  /// No description provided for @deletedUser.
  ///
  /// In ja, this message translates to:
  /// **'<削除済ユーザー>'**
  String get deletedUser;

  /// No description provided for @selectNumberText.
  ///
  /// In ja, this message translates to:
  /// **'{length}件選択'**
  String selectNumberText(Object length);

  /// No description provided for @authErrorMessageNotExistsProvider.
  ///
  /// In ja, this message translates to:
  /// **'アカウントは1つ以上の外部アカウントとの連携をしておく必要があります。'**
  String get authErrorMessageNotExistsProvider;

  /// No description provided for @authErrorMessagAlreadyInUse.
  ///
  /// In ja, this message translates to:
  /// **'このアカウントはすでに連携済です。\n別のアカウントを利用するか、一度ログアウトしてから連携して下さい。'**
  String get authErrorMessagAlreadyInUse;

  /// No description provided for @bullet.
  ///
  /// In ja, this message translates to:
  /// **'・'**
  String get bullet;

  /// No description provided for @notUseAnalytics.
  ///
  /// In ja, this message translates to:
  /// **'現在、ふりかえり機能はご利用頂けません。'**
  String get notUseAnalytics;

  /// No description provided for @analyticsFeatureTitle.
  ///
  /// In ja, this message translates to:
  /// **'ふりかえり機能では、以下の機能がご利用頂けます。'**
  String get analyticsFeatureTitle;

  /// No description provided for @priceAnalytics.
  ///
  /// In ja, this message translates to:
  /// **'金額の推移'**
  String get priceAnalytics;

  /// No description provided for @purchaseUserAnalytics.
  ///
  /// In ja, this message translates to:
  /// **'買ってくれた人の割合'**
  String get purchaseUserAnalytics;

  /// No description provided for @purchasedAnalytics.
  ///
  /// In ja, this message translates to:
  /// **'買ってもらった割合'**
  String get purchasedAnalytics;

  /// No description provided for @analyticsPublishPlan.
  ///
  /// In ja, this message translates to:
  /// **'※ 開発者のこどもが幼稚園に入るまでには公開します'**
  String get analyticsPublishPlan;

  /// No description provided for @deleteAccountConfirmTitle.
  ///
  /// In ja, this message translates to:
  /// **'退会の確認'**
  String get deleteAccountConfirmTitle;

  /// No description provided for @deleteAccountConfirmMessage.
  ///
  /// In ja, this message translates to:
  /// **'本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。'**
  String get deleteAccountConfirmMessage;

  /// No description provided for @joinedGroupTitle.
  ///
  /// In ja, this message translates to:
  /// **'グループへ参加'**
  String get joinedGroupTitle;

  /// No description provided for @joinedGroupMessage.
  ///
  /// In ja, this message translates to:
  /// **'グループに参加しました。'**
  String get joinedGroupMessage;

  /// No description provided for @joinGroupErrorMessageInvalidShareLink.
  ///
  /// In ja, this message translates to:
  /// **'招待リンクが正しくありません。'**
  String get joinGroupErrorMessageInvalidShareLink;

  /// No description provided for @joinGroupErrorMessageJoinedGroup.
  ///
  /// In ja, this message translates to:
  /// **'すでに参加しています。'**
  String get joinGroupErrorMessageJoinedGroup;

  /// No description provided for @joinGroupErrorMessageInvalidDate.
  ///
  /// In ja, this message translates to:
  /// **'招待リンクの有効期限が切れています。'**
  String get joinGroupErrorMessageInvalidDate;

  /// No description provided for @joinGroupErrorMessageNotAuth.
  ///
  /// In ja, this message translates to:
  /// **'認証エラーが発生しました。'**
  String get joinGroupErrorMessageNotAuth;

  /// No description provided for @joinGroupErrorMessageLimitOver.
  ///
  /// In ja, this message translates to:
  /// **'グループの参加上限(5件)に達しました。'**
  String get joinGroupErrorMessageLimitOver;

  /// No description provided for @leave.
  ///
  /// In ja, this message translates to:
  /// **'離脱'**
  String get leave;

  /// No description provided for @select.
  ///
  /// In ja, this message translates to:
  /// **'選択'**
  String get select;

  /// No description provided for @wanterName.
  ///
  /// In ja, this message translates to:
  /// **'だれがほしい？'**
  String get wanterName;

  /// No description provided for @wanterNameChipTitle.
  ///
  /// In ja, this message translates to:
  /// **'ほしい人'**
  String get wanterNameChipTitle;

  /// No description provided for @businessErrorMessageOverItemCount.
  ///
  /// In ja, this message translates to:
  /// **'登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。'**
  String get businessErrorMessageOverItemCount;

  /// No description provided for @updateAppTitle.
  ///
  /// In ja, this message translates to:
  /// **'アプリの更新'**
  String get updateAppTitle;

  /// No description provided for @updateAppMessage.
  ///
  /// In ja, this message translates to:
  /// **'アプリの最新版がリリースされています。\nストアへ移動しますか？'**
  String get updateAppMessage;

  /// No description provided for @goStore.
  ///
  /// In ja, this message translates to:
  /// **'ストアへ'**
  String get goStore;

  /// No description provided for @buyerName.
  ///
  /// In ja, this message translates to:
  /// **'購入した人'**
  String get buyerName;

  /// No description provided for @howToUse.
  ///
  /// In ja, this message translates to:
  /// **'使い方'**
  String get howToUse;

  /// No description provided for @joinPremiumGroup.
  ///
  /// In ja, this message translates to:
  /// **'欲しい物の登録数制限を解放'**
  String get joinPremiumGroup;

  /// No description provided for @joinedPremiumGroup.
  ///
  /// In ja, this message translates to:
  /// **'欲しい物の登録数制限が解放されました。(無制限)'**
  String get joinedPremiumGroup;

  /// No description provided for @itemPurchase.
  ///
  /// In ja, this message translates to:
  /// **'商品の購入'**
  String get itemPurchase;

  /// No description provided for @itemLimitReleaseMessage.
  ///
  /// In ja, this message translates to:
  /// **'商品を購入すると\n表示中のグループに登録できる\n欲しい物の制限が解放されます。\n(無料版は30個まで)\n\n価格：¥{price}({term})'**
  String itemLimitReleaseMessage(Object term, Object price);

  /// No description provided for @purchaseOkLabel.
  ///
  /// In ja, this message translates to:
  /// **'購入(¥{price})'**
  String purchaseOkLabel(Object price);

  /// No description provided for @lifeful.
  ///
  /// In ja, this message translates to:
  /// **'無期限'**
  String get lifeful;

  /// No description provided for @darkMode.
  ///
  /// In ja, this message translates to:
  /// **'ダークモード'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In ja, this message translates to:
  /// **'ライトモード'**
  String get lightMode;

  /// No description provided for @purchaseRate.
  ///
  /// In ja, this message translates to:
  /// **'購入率'**
  String get purchaseRate;

  /// No description provided for @purchaseRateAndPlan.
  ///
  /// In ja, this message translates to:
  /// **'購入率 (予定込)'**
  String get purchaseRateAndPlan;

  /// No description provided for @formatPercent.
  ///
  /// In ja, this message translates to:
  /// **'{num}%'**
  String formatPercent(Object num);

  /// No description provided for @purchasePrice.
  ///
  /// In ja, this message translates to:
  /// **'購入金額'**
  String get purchasePrice;

  /// No description provided for @formatMonth.
  ///
  /// In ja, this message translates to:
  /// **'{month}月'**
  String formatMonth(Object month);

  /// No description provided for @formatFraction.
  ///
  /// In ja, this message translates to:
  /// **'{molecule}/{denominator}'**
  String formatFraction(Object molecule, Object denominator);

  /// Notification add item title
  ///
  /// In ja, this message translates to:
  /// **'{name}さんがほしいものを追加しました！'**
  String notificationAddItemTitle(Object name);

  /// No description provided for @notificationAddItemBody.
  ///
  /// In ja, this message translates to:
  /// **'{name}さんがほしいものを追加しました！'**
  String notificationAddItemBody(Object name);

  /// Push notification
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知'**
  String get pushNotification;

  /// Push notification description
  ///
  /// In ja, this message translates to:
  /// **'グループ内でほしいものが追加された場合に通知が受け取れます'**
  String get pushNotificationDescription;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return L10nEn();
    case 'ja':
      return L10nJa();
  }

  throw FlutterError(
      'L10n.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
