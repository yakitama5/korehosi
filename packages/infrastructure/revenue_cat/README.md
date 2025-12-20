# infrastructure_revenue_cat

## 責務 (Responsibilities)

RevenueCat を使用したアプリ内課金機能の実装を提供します。
`packages/domain` で定義された課金関連のインターフェースを実装します。

主な役割：

- 課金情報の取得、購入処理の実装。
- ユーザーのサブスクリプション状態の管理。

## 禁止事項 (Constraints)

- **UIへの依存**: 課金画面自体は実装しません（機能のみ）。
- **ビジネスルールの定義**: 課金プランの判定ロジックなどは `domain` または `application` で行います。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/domain`
  - `packages/core`
  - RevenueCat SDK
- **禁止された依存関係**:
  - `packages/application`
  - `packages/designsystem`
