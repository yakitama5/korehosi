# infrastructure_branch

## 責務 (Responsibilities)

Branch.io (Deep Linking) サービスの SDK ラッパーと、関連するドメインインターフェースの実装を提供します。

主な役割：

- ディープリンクの生成とハンドリングの実装。

## 禁止事項 (Constraints)

- **UIへの依存**: UIコンポーネントを含めてはいけません。
- **ビジネスルールの定義**: ロジックは `domain`、フロー制御は `application` に記述します。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/domain`
  - `packages/core`
  - Branch SDK
- **禁止された依存関係**:
  - `packages/application`
  - `packages/designsystem`
