# packages_core

## 責務 (Responsibilities)

このパッケージは、アプリケーション全体で共有される汎用的なユーティリティ、拡張機能、定数などを提供します。
特定の機能やビジネスロジックに依存しない、純粋なヘルパーコードの集合です。

主な役割：

- ログ出力設定 (`Logger`)
- 汎用的な拡張メソッド
- 共通の型定義や定数

## 禁止事項 (Constraints)

- **ビジネスロジックの記述**: 特定のドメインやアプリケーション固有のルールを記述してはいけません（`packages/domain` や `packages/application` へ記述）。
- **Flutter UIへの依存**: 原則として UI ウィジェット（`Widget`）を含めてはいけません。Dart のみで動作するコードが望ましいです。
- **上位レイヤーへの依存**: 他の全てのパッケージから参照されるため、他の内部パッケージに依存してはいけません。

## 依存関係 (Architecture Dependencies)

このパッケージはプロジェクトの最下層に位置します。

- **禁止された依存関係**:
  - `packages/domain`
  - `packages/application`
  - `packages/designsystem`
  - `packages/infrastructure/*`
