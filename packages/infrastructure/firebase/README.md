# infrastructure_firebase

## 責務 (Responsibilities)

`packages/domain` で定義されたインターフェース（Repository など）の、Firebase を使用した実装を提供します。
Firestore, Firebase Auth, Cloud Functions などの Firebase サービスの操作をカプセル化します。

主な役割：

- Repository の実装クラス (e.g. `ListRepositoryImpl`)
- Firebase サービスの初期化と設定ラッパー

## 禁止事項 (Constraints)

- **UIへの依存**: 画面描画や `BuildContext` への依存は禁止です（UIを含むSDKラッパーが必要な場合は `packages/infra_ui` を検討してください）。
- **ビジネスルールの定義**: データの取得・保存のみに専念し、ビジネスロジックは実装しません。

## 依存関係 (Architecture Dependencies)

- **許可された依存関係**:
  - `packages/domain`
  - `packages/core`
  - Firebase 関連の Flutter Plugins
- **禁止された依存関係**:
  - `packages/application`
  - `packages/designsystem`
