# packages_dependency_override

## 責務 (Responsibilities)

このパッケージは、DI（依存性の注入）の設定、特に Riverpod の `ProviderScope.overrides` に渡すための依存関係の解決ルールを提供します。
`packages/domain` で定義されたインターフェース（RepositoryProviderなど）に対して、具体的な `packages/infrastructure/*` の実装を紐付けます。

主な役割：

- アプリケーション起動時の Provider Override リストの作成。
- 環境（本番、開発、テスト）に応じた実装の切り替え。

## 禁止事項 (Constraints)

- **ビジネスロジック**: ロジックは記述しません。あくまで「紐付け」のみを行います。
- **機能実装**: 新たな機能をここに実装してはいけません。

## 依存関係 (Architecture Dependencies)

このパッケージは「システムの構成」を知る必要があるため、例外的に多数のパッケージに依存します。

- **許可された依存関係**:
  - `packages/domain`
  - `packages/infrastructure/*` (全て)
- **禁止された依存関係**:
  - `packages/application` (紐付け対象がドメイン層のため、アプリ層への依存は不要なはずです)
  - `packages/designsystem`
  - `apps/app`
