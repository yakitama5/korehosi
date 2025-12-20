# infrastructure_mock

## 責務 (Responsibilities)

テストや開発用途のために、`packages/domain` で定義されたインターフェースのモック実装を提供します。
実際のサーバー通信やDB操作を行わず、メモリ上でデータを処理、または固定値を返却します。

主な役割：

- Repository のオンメモリ実装 (e.g. `MockListRepository`)
- テストデータの生成

## 禁止事項 (Constraints)

- **本番環境での利用**: 原則として本番ビルドには含まれるべきではありません（`packages/dependency_override` での開発時注入を除く）。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/domain`
  - `packages/core`
- **禁止された依存関係**:
  - `packages/application`
  - `packages/designsystem`
  - `packages/infrastructure/firebase` 等の他のインフラ（モックなので他インフラには依存しないのが通常）
