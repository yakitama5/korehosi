# infrastructure_shared_preferences

## 責務 (Responsibilities)

`SharedPreferences` を使用したローカルデータ永続化の実装を提供します。
主に設定情報や軽量なデータの保存に使用されます。

主な役割：

- ローカルストレージへの Key-Value 保存の実装。

## 禁止事項 (Constraints)

- **大量データの保存**: パフォーマンスに影響するため、大量データの保存には使用しません（データベース等の利用を検討）。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/domain`
  - `packages/core`
  - `shared_preferences` package
- **禁止された依存関係**:
  - `packages/application`
  - `packages/designsystem`
