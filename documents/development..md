# 開発者向け資料

## 環境構築

### 前提条件 (必要なツール類)

- [VS Code](https://code.visualstudio.com) のインストール
  ※ 環境設定が独力で可能であれば、他エディタで問題なし
- [fvm](https://fvm.app) のインストール
- [Flutter Fire CLI](https://firebase.google.com/docs/flutter/setup?hl=ja&platform=ios) のインストール

### Firebase

#### 初期設定 (flutter_fire_cli)

下記のコマンドをそれぞれ実行することで、環境別のファイルをそれぞれの場所に配置する

- 開発

  ```sh
  flutterfire configure --out=lib/firebase_options_dev.dart -p [Develop Project ID] --platforms=android,ios,web -i [iOS Bundle ID] -a [Android Package Name]
  ```

- 本番

  ```sh
  flutterfire configure --out=lib/firebase_options.dart -p [Develop Project ID] --platforms=android,ios,web -i [iOS Bundle ID] -a [Android Package Name]
  ```

生成されるファイルの内、`GoogleService-Info.plist`, `google-services.json`は出力先を変更出来ないため、
それぞれの格納先に手動で配置すること

- `GoogleService-Info.plist`
  - 開発：`ios\dev\GoogleService-Info.plist`
  - 本番：`ios\prod\GoogleService-Info.plist`
- `google-services.json`
  - 開発：`android\app\src\dev\google-services.json`
  - 本番：`android\app\src\prod\google-services.json`

### 設定ファイルの追加

アプリの環境変数やFirebaseへの接続情報などの機密情報については、それぞれ下記の内容を定義する必要がある

#### 環境変数 (dart-define)

1. 下記の形式で`dart-defines/`配下に`dev.json`, `prod.json`を作成する

   ```json
   {
       "flavor": "dev or prod",
       "appName": "(dev)アプリ名",
       "appIdSuffix": ".dev",
       "appWebUrl": "https://XXXXX.com",
       "appWebDomain": "XXXXX.com",
       "androidPackageName": "com.example.xxxxx.dev",
       "iosBundleId": "com.example.xxxxx.dev",
       "reversedClientId": "xxxxx",
       "appStoreId": "xxxxx",
       "dynamicLinkUriPrefix": "https://xxxxx.link"
   }
   ```

   

#### 機密情報 (.env)

1. 下記の形式で`scripts/env/`配下に`.env`, `.env.dev` を作成する

   ```ini
   GOOGLE_REVERSED_CLIENT_ID=XXXXX
   GOOGLE_CLIENT_ID=XXXXX
   REVENUE_CAT_KEY_APPLE_STORE=XXXXX
   REVENUE_CAT_KEY_PLAY_STORE=XXXXX
   RECPTCHA_SITE_KEY=XXXXX
   ```

2. 下記のコマンドを実行して、`env.g.dart`ファイルを生成する

   ```sh
   fvm flutter pub run build_runner build --build-filter 'lib/env/*.dart'
   ```



#### AppStoreリリース用

1. XCodeでビルドした際に作成される`ExportOptions.plist`をプロジェクトルート配下に配置する

## 実行手順

### デバッグ

- Web

  ```sh
  # 開発環境
  flutter run -d web-server --web-port=5000 --web-renderer html --dart-define-from-file=dart_defines/dev.json
  
  # 本番環境
  flutter run -d web-server --web-port=5000 --web-renderer html --dart-define-from-file=dart_defines/prod.json
  ```

  ```sh
  fvm flutter build appbundle --dart-define-from-file=dart_defines/prod.json
  ```



## 開発中に多用するコマンド

### プロジェクトの変更

1. 現在のプロジェクトを確認する

   ```sh
   firebase projects:list
   ```

   | Project Display Name | Project ID                 | Project Number | Resource Location ID |
   | -------------------- | -------------------------- | -------------- | -------------------- |
   | [Project Name]       | [Project ID] **(current)** | ---            | ---                  |
   | [Project Name]       | [Develop Project ID]       | ---            | ---                  |

2. 利用したいプロジェクトを選択する

   ```sh
   firebase use [Project ID]
   ```

### Cloud Functionのデプロイ

1. Functionsをデプロイする

   ```sh
   # すべてのファンクション
   firebase deploy --only functions
   # ファンクション名指定
   firebase deploy --only functions:[Function Name]
   ```

### Firebase Hostingのデプロイ

1. Web資産のビルドを行う

   ```sh
   flutter build web --web-renderer html --dart-define-from-file=dart_defines/prod.json
   ```

2. Firebase Hostingへのデプロイを行う

   ```sh
   firebase deploy --only hosting
   ```

