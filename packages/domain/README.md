# packages_domain

## 責務 (Responsibilities)

このパッケージは、アプリケーションのビジネスロジックの中核となる「ドメイン層」を担当します。
外部の技術的な詳細（DB、API、UI）から独立した、純粋なビジネスルールを定義します。

主な役割：

- **エンティティ (Entities)**: アプリケーションのデータ構造とビジネスルール。
- **リポジトリインターフェース (Repository Interfaces)**: データの永続化や取得を行うための抽象定義。
- **ドメインサービス**: 複数のエンティティにまたがるロジック。

## 禁止事項 (Constraints)

- **インフラストラクチャの実装**: 具体的なデータアクセス（Firebase, SQL, APICallなど）の実装は記述してはいけません（`packages/infrastructure/*` へ記述）。
- **UIへの依存**: 画面描画や Flutter Widget に依存してはいけません。
- **Application層への依存**: ユースケースやアプリの状態管理（Application層）に依存してはいけません。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/core`
  - 汎用的な外部パッケージ（`freezed`, `json_annotation` 等）
- **禁止された依存関係**:
  - `packages/application`
  - `packages/infrastructure/*`
  - `packages/designsystem`
