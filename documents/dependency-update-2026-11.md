# 2026年11月のSDK・依存更新

## セキュリティ対応

Flutterを3.44.6から最新stableの3.47.9へ更新し、Dartの最低バージョンを3.13.7に揃えた。
[GHSA-frr6-h895-5pxp](https://github.com/dart-lang/sdk/security/advisories/GHSA-frr6-h895-5pxp)
の修正版はFlutter 3.47.8 / Dart 3.13.7以降。SDKの指定変更だけでは配布済みアプリは更新されないため、Androidなどの対象アプリは再ビルド・再配布が必要。

FlutterFireはFirebase Core 4.15.2 / Cloud Firestore 6.10.2などの最新互換版へ更新。
Firebase Apple SDKは12.19.3へ更新する。このバージョンにはFirestoreの証明書修正が含まれる。
[Firebase Apple SDKリリースノート](https://firebase.google.com/support/release-notes/ios)を参照。

Cloud FunctionsはFirebase Admin 14.5.0 / Functions 7.4.0へ更新し、Adminのmodular APIへ移行した。
間接依存の脆弱性対応と検証コマンドは[Functions README](../functions/README.md)を参照。

## 最新版を選べない依存

- `fcm_config` 3.6.5は`firebase_core <5`を要求するため、FlutterFireはCore 4系の最新互換版を採用。Core 5系へ進む場合は通知ラッパーの更新・置換が必要。
- `adaptive_dialog`、`animations`、`cached_network_image`、`dynamic_color`、`flutter_slidable`、`go_router`、`google_fonts`、`introduction_screen`、`shimmer`はFlutter内蔵Materialと互換な最新リリースを採用。これ以降のメジャー版は独立した`material_ui` / `cupertino_ui`への移行を伴う。
- `reactive_forms` 18.2.0 / `reactive_forms_annotations` 8.0.1は、追跡済みフォームコードと互換な版に固定。18.2.2ではエラー型が変わり、annotations 8.2以降は生成クラスのAPIも変わる。上流generator 8.4.0は公称対応analyzerでも削除済みAPIによりコンパイル失敗し、8.5.0が要求するanalyzer 12に対応する安定版Freezedもないため、生成器の復活は別対応とする。
- Flutter 3.47.9の`flutter_test`は`test_api 0.7.12`を固定しており、`test`との組合せで`analyzer <14`が必要。このため`build_runner 2.16.1`、`freezed 4.0.1`、`analyzer 13.3.0`を採用。`build_runner 2.17.0`は撤回済み、2.17.1は他の生成器が未対応の`build 5`を要求する。
- `material_color_utilities`などSDK側で固定される依存はSDKの指定に従う。
- 既存の`app_settings` overrideは`reactive_image_picker 8.0.1`の制約とSwift 6対応のため維持。

## 互換性修正

- `fcm_config`のWeb向けimport重複は上流最新版にも残っているため、ライセンスを保持した最小修正版を`third_party/fcm_config`へ配置。公開APIと通知処理は変更せず、条件付きexportによる実装選択へ統一。解除条件は同フォルダの`PATCHES.md`を参照。
- E2E用CLIをPatrol 4.9.0 / FlutterFire 1.4.1 / Firebase 15.34.2へ揃えた。
- Slangの設定を各パッケージの`build.yaml`へ集約し、workspaceでのコード生成に対応。生成済みi18nファイルを入力から除外し、後処理での出力衝突を回避。
- Enviedの入力パスを各パッケージのルートからの相対パスへ変更。秘密情報ファイルの保存先は従来どおり`packages/infrastructure/{firebase,revenue_cat}/scripts/env/`。
- DevicePreview 3、Gauge、Riverpodの非const生成Provider、通知権限の`deniedPermanently`に対応。
- nilts / Riverpod lintをDartの解析プラグインへ移行。既存の診断の有効化方針を維持し、今回追加されたコードスタイル規則の適用は別対応とする。
- Androidは更新後のプラグイン要件に合わせてJava 17、compileSdk 37と対応するAGP / Kotlin / Gradleへ更新。iOSはSwift Package Managerをアプリの設定で明示的に有効化。

## 検証

- Flutter: アプリ19件、domain 3件、application 8件、Firebase 17件、designsystem 6件の計53件成功（画面のゴールデンテストを含む）。
- Cloud Functions: 単体テスト57件、Firestore / Storageルールテスト12件成功。Node 22.23.4、Firebase CLI 15.34.2を使用。
- FunctionsのESLint成功、`npm audit`は開発依存を含めて検出0件。
- `flutter analyze --no-pub`は指摘0件。
- 全workspaceのコード生成成功。`git diff --check`は既存CRLFを考慮して確認。
- Web: リリースビルド成功（公開E2E用設定）。
- Android: arm64のdebug APKビルド成功。通知ライブラリ修正後の最終状態でも公開E2E用設定で検証し、一時署名設定・環境別resourceは終了時に復元。
- iOS: XcodeでSwiftPM依存解決が成功し、両`Package.resolved`を同期。実ビルドは手元のXcode 26.1.1がFirebase SDKの要求する26.2以降を満たさないため未検証。

ローカルの解析・テスト・ビルドには接続を伴わないテスト用環境値を一時使用し、終了時に入力ファイル・生成ファイルを削除。実際のサインイン、課金、通知送信、実機動作、本番への配布は検証対象に含めていない。実環境の設定は従来どおりCIの秘密情報から復元する。
