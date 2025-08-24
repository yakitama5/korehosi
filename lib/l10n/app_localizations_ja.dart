// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get start => 'はじめる';

  @override
  String get firstTime => 'はじめての方はこちら';

  @override
  String get accountLink => 'アカウント連携';

  @override
  String get contactUs => 'お問い合わせ';

  @override
  String get termOfService => '利用規約';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get accountLinkDescTitle => 'アカウント連携を行うことで、\n下記の機能をご利用いただけます。';

  @override
  String get accountLinkDescBodyCloudBackup => 'クラウドへのデータバックアップ';

  @override
  String get accountLinkDescBodyMultiDevice => '複数端末での同時利用';

  @override
  String get accountLinkDescBodyDataSend => '端末変更に伴うデータ移行';

  @override
  String get onboardStartTitle => 'はじめに';

  @override
  String get onboardStartMessage => 'まずはプロフィールを登録しましょう';

  @override
  String get questionAgeGroup => 'あなたは？';

  @override
  String get questionSex => '性別は？';

  @override
  String get questionName => 'お名前は？';

  @override
  String get questionNameCapiton => 'または ニックネーム';

  @override
  String get questionConfirm => 'あっていますか？';

  @override
  String get selectChild => 'こども (買ってほしい)';

  @override
  String get selectAdult => 'おとな (買ってあげたい)';

  @override
  String get selectMan => 'おとこ';

  @override
  String get selectWoman => 'おんな';

  @override
  String get selectNeither => 'どちらでもない';

  @override
  String get nameLabel => '名前 または ニックネーム';

  @override
  String get name => '名前';

  @override
  String get next => '次へ';

  @override
  String get back => '戻る';

  @override
  String get prev => '前へ';

  @override
  String get skip => 'スキップ';

  @override
  String get sexMan => 'おとこ';

  @override
  String get sexWoman => 'おんな';

  @override
  String get sexNeither => 'どちらでもない';

  @override
  String get ageGroupChild => 'こども';

  @override
  String get ageGroupAdult => 'おとな';

  @override
  String get ageGroup => '年齢層';

  @override
  String get sex => '性別';

  @override
  String get unset => '<未設定>';

  @override
  String get requiredIcon => '*';

  @override
  String get requiredHelper => '*必須項目';

  @override
  String get signInWithGoogle => 'Googleでサインイン';

  @override
  String get signInWithApple => 'Appleでサインイン';

  @override
  String get wishList => 'ほしいもの';

  @override
  String get analyze => 'ふりかえり';

  @override
  String get settings => 'せってい';

  @override
  String get addWishList => 'ほしいものを追加';

  @override
  String get orderKeyName => '名前';

  @override
  String get orderKeyWishRank => '欲しい度';

  @override
  String get orderKeyCreatedAt => '作成日';

  @override
  String get orderKeyUpdatedAt => '更新日';

  @override
  String get sortOrder => '並び替え';

  @override
  String get sortOrderAsc => '昇順';

  @override
  String get sortOrderDesc => '降順';

  @override
  String get status => 'ステータス';

  @override
  String get wishRank => '欲しい度';

  @override
  String get cancel => 'キャンセル';

  @override
  String get reset => 'リセット';

  @override
  String get apply => '適用';

  @override
  String get notPurchased => '未購入';

  @override
  String get purchasePlan => '購入予定';

  @override
  String get purchased => '購入済';

  @override
  String get all => 'すべて';

  @override
  String get noName => '名無し';

  @override
  String get groupInitialNameSuffix => ' のグループ';

  @override
  String get unexpectedErrorMessage => '予期せぬエラーが発生しました。';

  @override
  String searchEmptyMessage(String item) {
    return '$itemが見つかりませんでした。';
  }

  @override
  String get merchandiseName => '商品名';

  @override
  String get save => '保存';

  @override
  String editPageTitle(String item) {
    return '$itemを編集';
  }

  @override
  String createPageTitle(Object item) {
    return '$itemを作成';
  }

  @override
  String get wishSeasonLabel => 'いつほしい？';

  @override
  String get wishSeasonHint => '例：クリスマス、誕生日';

  @override
  String get url => 'URL';

  @override
  String get addUrl => 'URLを追加';

  @override
  String get memo => 'メモ';

  @override
  String get shoot => '写真を撮る';

  @override
  String get chooseFromLibrary => 'ライブラリから画像を選択';

  @override
  String get star => '星';

  @override
  String get delete => '削除';

  @override
  String get deletedMessage => '削除済です。';

  @override
  String get completeDeleteMessage => '削除しました。';

  @override
  String get completeChangeGroupMessage => 'グループを切り替えました。';

  @override
  String get uploadImage => '写真のアップロード';

  @override
  String lackOfPermission(Object permission) {
    return '$permissionが許可されていません';
  }

  @override
  String confirmPermissionOffTitle(Object permission) {
    return '$permissionをオフにしますか？';
  }

  @override
  String confirmPermissionOffMessage(Object permission) {
    return '設定アプリを開いて$permissionをオフにしてください';
  }

  @override
  String get permissionPhotos => 'ギャラリーへのアクセス';

  @override
  String get permissionCamera => 'カメラへのアクセス';

  @override
  String get permissionPushNotification => 'プッシュ通知';

  @override
  String permissionWarnMessage(Object permission) {
    return '設定アプリを開いて$permissionを許可してください';
  }

  @override
  String get openSettingsApp => '設定アプリを開く';

  @override
  String get ok => 'OK';

  @override
  String get confirmDiscardChangesTitle => '変更を破棄しますか？';

  @override
  String get confirmDiscardChangesMessage => 'すべての変更は失われます';

  @override
  String get discard => '破棄';

  @override
  String get notDiscard => '破棄しない';

  @override
  String get validErrorMessageRequired => '必須項目を入力して下さい';

  @override
  String get validErrorMessageUrlPattern => '正しいURL形式で入力して下さい';

  @override
  String get edit => '編集';

  @override
  String get purchaseOrpurchasePlan => '購入/購入予定';

  @override
  String get deleteConfirmTitle => '削除の確認';

  @override
  String deleteCofirmMessage(Object item) {
    return '「$item」を削除しますか？';
  }

  @override
  String deleteGroupCofirmMessage(Object name) {
    return '「$name」を削除しますか？\nグループに登録している欲しい物は全て削除されます。\nこの操作は元に戻すことができません。';
  }

  @override
  String get leaveConfirmTitle => '離脱の確認';

  @override
  String leaveCofirmMessage(Object group) {
    return '「$group」から離脱しますか？';
  }

  @override
  String get notSelectedGroupDialogTitle => 'グループが選択されていません';

  @override
  String get notSelectedGroupDialogMessage => 'グループを選択してからほしいものを追加して下さい';

  @override
  String get purchaseInfoTitle => '購入/購入予定情報';

  @override
  String get purchaseInfoCaption => '以降の内容はグループ内の大人にだけ表示されます';

  @override
  String get price => '金額';

  @override
  String get purchasePlanDateTime => '購入予定日';

  @override
  String get yenMark => '¥';

  @override
  String get surprise => 'サプライズ';

  @override
  String get surpriseCaption => '状況を子供に知られたくない';

  @override
  String get purchasePlanDateTimeCaption => '入力すると「購入予定」になります';

  @override
  String get sentAtCaption => '入力すると「購入済」になります';

  @override
  String get sentAt => '渡した日';

  @override
  String get authErrorMessage => '認証エラーが発生しました。\nしばらく時間を置いてログインして下さい。';

  @override
  String get account => 'アカウント';

  @override
  String get profile => 'プロフィール';

  @override
  String get group => 'グループ';

  @override
  String get help => 'ヘルプ';

  @override
  String get developperTwitter => '開発者X (旧Twitter)';

  @override
  String get license => 'ライセンス';

  @override
  String get error => 'エラー';

  @override
  String get urlErrorMessageCanNotOpen => 'URLを開けませんでした。\n頻発する場合はお問い合わせ下さい。';

  @override
  String get joinGroup => '参加グループ';

  @override
  String get share => '共有';

  @override
  String get copy => 'コピー';

  @override
  String get shareCaption => '共有してメンバーを招待しましょう';

  @override
  String groupShareText(Object user, Object group, Object url) {
    return '$userさんから$groupへ招待されました。\n下記のURLをクリックするか、QRコードを読み取ることで、欲しい物リストのグループに参加できます\n$url';
  }

  @override
  String get copied => 'コピーしました';

  @override
  String get saved => '保存しました';

  @override
  String get groupName => 'グループ名';

  @override
  String get deleteErrorMessageRequiredExists =>
      '作成したグループを全て削除することはできません。\n最低でも1件以上のグループが必要です。';

  @override
  String get deleteErrorMessagePermission => '削除を行う権限がありません。';

  @override
  String get shareGroupHelpTitle => 'グループの共有/参加';

  @override
  String get shareGroupHelpMessage =>
      '【グループの共有】\nグループから「共有」を行って下さい\n\n【グループへの参加】\n共有されたURLをクリックするか、\nQRコードを読み取ることで参加できます';

  @override
  String get addGroup => 'グループを追加';

  @override
  String get other => 'その他';

  @override
  String get logout => 'ログアウト';

  @override
  String get deleteAccount => '退会';

  @override
  String get google => 'Google';

  @override
  String get apple => 'Apple';

  @override
  String get notJoinedGroupMessage =>
      'グループに所属していません。\nグループを作成するか、\n招待されたグループに参加して下さい。';

  @override
  String get deletedUser => '<削除済ユーザー>';

  @override
  String selectNumberText(Object length) {
    return '$length件選択';
  }

  @override
  String get authErrorMessageNotExistsProvider =>
      'アカウントは1つ以上の外部アカウントとの連携をしておく必要があります。';

  @override
  String get authErrorMessagAlreadyInUse =>
      'このアカウントはすでに連携済です。\n別のアカウントを利用するか、一度ログアウトしてから連携して下さい。';

  @override
  String get bullet => '・';

  @override
  String get notUseAnalytics => '現在、ふりかえり機能はご利用頂けません。';

  @override
  String get analyticsFeatureTitle => 'ふりかえり機能では、以下の機能がご利用頂けます。';

  @override
  String get priceAnalytics => '金額の推移';

  @override
  String get purchaseUserAnalytics => '買ってくれた人の割合';

  @override
  String get purchasedAnalytics => '買ってもらった割合';

  @override
  String get analyticsPublishPlan => '※ 開発者のこどもが幼稚園に入るまでには公開します';

  @override
  String get deleteAccountConfirmTitle => '退会の確認';

  @override
  String get deleteAccountConfirmMessage =>
      '本当に退会してもよろしいですか？\nこの操作は元に戻すことができません。';

  @override
  String get joinedGroupTitle => 'グループへ参加';

  @override
  String get joinedGroupMessage => 'グループに参加しました。';

  @override
  String get joinGroupErrorMessageInvalidShareLink => '招待リンクが正しくありません。';

  @override
  String get joinGroupErrorMessageJoinedGroup => 'すでに参加しています。';

  @override
  String get joinGroupErrorMessageInvalidDate => '招待リンクの有効期限が切れています。';

  @override
  String get joinGroupErrorMessageNotAuth => '認証エラーが発生しました。';

  @override
  String get joinGroupErrorMessageLimitOver => 'グループの参加上限(5件)に達しました。';

  @override
  String get leave => '離脱';

  @override
  String get select => '選択';

  @override
  String get wanterName => 'だれがほしい？';

  @override
  String get wanterNameChipTitle => 'ほしい人';

  @override
  String get businessErrorMessageOverItemCount =>
      '登録数の上限に達しました。\n購入済のものを削除するか、プレミアムプランに変更して下さい。';

  @override
  String get updateAppTitle => 'アプリの更新';

  @override
  String get updateAppMessage => 'アプリの最新版がリリースされています。\nストアへ移動しますか？';

  @override
  String get goStore => 'ストアへ';

  @override
  String get buyerName => '購入した人';

  @override
  String get howToUse => '使い方';

  @override
  String get joinPremiumGroup => '欲しい物の登録数制限を解放';

  @override
  String get joinedPremiumGroup => '欲しい物の登録数制限が解放されました。(無制限)';

  @override
  String get itemPurchase => '商品の購入';

  @override
  String itemLimitReleaseMessage(Object term, Object price) {
    return '商品を購入すると\n表示中のグループに登録できる\n欲しい物の制限が解放されます。\n(無料版は30個まで)\n\n価格：¥$price($term)';
  }

  @override
  String purchaseOkLabel(Object price) {
    return '購入(¥$price)';
  }

  @override
  String get lifeful => '無期限';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get lightMode => 'ライトモード';

  @override
  String get purchaseRate => '購入率';

  @override
  String get purchaseRateAndPlan => '購入率 (予定込)';

  @override
  String formatPercent(Object num) {
    return '$num%';
  }

  @override
  String get purchasePrice => '購入金額';

  @override
  String formatMonth(Object month) {
    return '$month月';
  }

  @override
  String formatFraction(Object molecule, Object denominator) {
    return '$molecule/$denominator';
  }

  @override
  String notificationAddItemTitle(Object name) {
    return '$nameさんがほしいものを追加しました！';
  }

  @override
  String notificationAddItemBody(Object name) {
    return '$nameさんがほしいものを追加しました！';
  }

  @override
  String get pushNotification => 'プッシュ通知';

  @override
  String get pushNotificationDescription => 'グループ内でほしいものが追加された場合に通知が受け取れます';
}
