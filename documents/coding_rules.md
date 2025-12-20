# コーディング規約

このプロジェクトにおけるコーディング規約とベストプラクティスをまとめています。
開発にあたっては、本ドキュメントの内容を遵守してください。

## 🎯 基本原則

- **SOLID原則**: オブジェクト指向設計の5つの原則を意識します。
- **KISS (Keep It Simple, Stupid)**: コードは単純に保ちます。複雑なロジックはバグの温床になります。
- **DRY (Don't Repeat Yourself)**: コードの重複を避けます。
- **YAGNI (You Aren't Gonna Need It)**: 今必要な機能だけを実装します。将来使うかもしれない機能は実装しません。

## 🛠️ ツールとフォーマット

- **フォーマット**: `dart_format` を使用して、コードのフォーマットを統一します。
- **Lint**: `analysis_options.yaml` で定義されたルールに従います。`dart analyze` や `custom_lint` でエラーや警告が出ない状態を保ちます。
- **自動修正**: `dart fix` を活用して、軽微な修正を自動化します。

## 📝 命名規則

Dartの標準的な命名規則に従います。

- **クラス / Enum / Typedef**: `PascalCase` (例: `UserProfile`, `AuthStatus`)
- **変数 / 関数 / メソッド / パラメータ**: `camelCase` (例: `userName`, `fetchData`)
- **ファイル / ディレクトリ**: `snake_case` (例: `user_profile.dart`, `auth_repository.dart`)
- **定数**: `lowerCamelCase` を基本としますが、特別な理由がある場合は `SCREAMING_SNAKE_CASE` も許容します。

## 💎 Dart ベストプラクティス

- **Null Safety**: 常に Null Safety を意識したコードを書きます。`!` (Bang operator) の使用は、値が絶対に null でないことが保証されている場合を除き避けます。
- **非同期処理**:
  - `Future`, `Stream` を適切に使い分けます。
  - `async/await` を使用して、可読性の高い非同期コードを書きます。
- **コレクション**: `collection` パッケージの便利なメソッドや、スプレッド演算子 (`...`)、コレクションif/for を活用します。
- **イミュータビリティ**: クラスや変数は可能な限りイミュータブル（不変）にします。`final` を積極的に使用します。

## 🦋 Flutter ベストプラクティス

- **Widget**:
  - UIは全てWidgetです。巨大なWidgetを作るのではなく、小さく再利用可能なWidgetに分割（コンポジション）することを優先します。
  - `build` メソッド内に複雑なロジックを書かないようにします。
  - `const` コンストラクタを積極的に使用して、リビルドのパフォーマンスを最適化します。
- **状態管理**:
  - **Riverpod** を使用します。
  - グローバルな状態や、Widgetツリーを跨ぐ状態の共有には `Provider` を使用します。
  - ローカルな状態（そのWidget内だけで完結するもの）には `flutter_hooks` (`useState` 等) や `ValueNotifier` を使用しても構いません。
- **UIロジックの分離**:
  - View (Widget) と Logic (ViewModel/Controller/Service) を分離し、テスト容易性と保守性を高めます。

## 🏗️ アーキテクチャ

本プロジェクトでは、**オニオンアーキテクチャ** を採用しています。
詳細については [architecture.md](./architecture.md) を参照してください。

- **Domain層**: ビジネスロジック、エンティティ。Flutterや外部ライブラリに依存しない純粋なDartコード。
- **Infrastructure層**: データアクセス、外部API連携。Firebaseなどの具体的な実装。
- **Application層**: アプリケーション固有のロジック、ユースケース。
- **Presentation層**: UI (Widget)、画面遷移。

## 🧪 テスト

- **単体テスト (Unit Test)**: ロジック（Domain, Application, Infrastructureの一部）に対して記述します。
- **Widgetテスト**: UIコンポーネントの振る舞いを検証します。
- **Goldenテスト**: UIの見た目（レイアウト、描画）が意図通りであることを画像比較で検証します。

## 🪵 ロギング

- `print` 文はデバッグ時のみ使用し、コミットするコードには残さないでください。
- アプリケーションのログ出力には、プロジェクト指定のロガー（`logger` パッケージ等）を使用してください。
