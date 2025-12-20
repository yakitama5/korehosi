# packages_application

## 責務 (Responsibilities)

このパッケージは、アプリケーションのユースケースや状態管理を行う「アプリケーション層」を担当します。
ドメイン層のオブジェクトを取りまとめ、UI層からの要求に応答し、結果を返却または状態を更新します。

主な役割：

- **ユースケース (UseCases)**: 特定のユーザー操作に対応する処理の流れ。
- **アプリケーションステート (Application State)**: アプリケーション全体の状態管理（Riverpod Providerなど）。
- **サービス (Services)**: アプリケーション固有のロジック。

## 禁止事項 (Constraints)

- **インフラストラクチャの直接利用**: 具体的なインフラ実装（RepositoryImplなど）を直接インスタンス化してはいけません。必ず `packages/domain` で定義されたインターフェースを介して利用します。
- **複雑なUIロジック**: 画面描画の詳細は記述しません（`packages/designsystem` や `apps/app` へ記述）。
- **ドメインロジックの流出**: ドメイン固有のルールは可能な限り `packages/domain` に記述し、ここではそのオーケストレーションに徹します。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/core`
  - `packages/domain`
- **禁止された依存関係**:
  - `packages/infrastructure/*` (インターフェースのみ利用可)
  - `packages/designsystem` (循環参照回避のため)
