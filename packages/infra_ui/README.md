# packages_infra_ui

## 責務 (Responsibilities)

このパッケージは、インフラストラクチャに関連する UI 機能を提供します。
UI を伴うが、インフラストラクチャ層の機能に強く依存するコンポーネント（例: 認証画面の一部、通知設定 UI など）を配置します。

主な役割：

- インフラストラクチャ機能（Firebase Messaging 設定など）と連携する UI コンポーネント。
- サードパーティ SDK の UI ラッパー。

## 禁止事項 (Constraints)

- **純粋なドメインロジック**: 画面に関係のないビジネスルールは `packages/domain` へ。
- **汎用的な UI**: インフラに依存しない汎用的な UI は `packages/designsystem` へ。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/core`
  - `packages/domain`
  - `packages/infrastructure/*`
- **禁止された依存関係**:
  - `apps/app` (循環参照となるため)
