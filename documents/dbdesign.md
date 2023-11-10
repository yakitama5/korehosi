# DB設計

## 技術選定

## ドキュメント構造

### users/{userId}

ユーザー情報を保持するコレクション

`userId`は`Firebase Authentication`で認証した `uid`と同一の値を利用

| Field        | Type          | Description          | Sample              |
| ------------ | ------------- | -------------------- | ------------------- |
| id           | string        | サロゲートキー(UUID) | XXXX (UUID)         |
| name         | string?       | 名前                 | サンプル 太郎       |
| ageGroup     | string        | こども or おとな     | child               |
| joinGroupIds | array<string> | 参加グループのID配列 | XXXX, YYYY          |
| createdAt    | Timestmap     | 作成日時             | 1987-12-01 00:00:00 |
| updatedAt    | Timestmap     | 更新日時             | 1987-12-01 00:00:00 |

### _dusers/{userId}

削除(退会)したユーザー情報を保持するコレクション

`users`コレクションとSameID構造で、構成も完全に一致するため割愛

### groups/{groupId}

所属するグループを保持するコレクション

| Field     | Type          | Description                  | Sample              |
| --------- | ------------- | ---------------------------- | ------------------- |
| id        | string        | サロゲートキー(UUID)         | XXXX (UUID)         |
| name      | string        | グループ名                   | サンプルグループ    |
| ownerUid  | string        | グループを作成したユーザーID | YYYY                |
| joinUids  | array<string> | 参加中のユーザーID配列       | XXXX, YYYY          |
| itemCount | number        | 登録された欲しい物の数       | 10                  |
| premium   | boolean       | プレミアムグループフラグ     | true                |
| createdAt | Timestmap     | 作成日時                     | 1987-12-01 00:00:00 |
| updatedAt | Timestmap     | 更新日時                     | 1987-12-01 00:00:00 |

### _dgroups/{groupId}

削除したグループ情報を保持するコレクション

`groups`コレクションとSameID構造で、構成も完全に一致するため割愛

### groups/{groupId}/items/{itemId}

欲しい物を保持するサブコレクション

| Field      | Type           | Description          | Sample                     |
| ---------- | -------------- | -------------------- | -------------------------- |
| id         | string         | サロゲートキー(UUID) | XXXX (UUID)                |
| name       | string?        | 欲しい物の商品名     | ジャングルジム             |
| imagesPath | array<string>? | 画像配列             | image.png, hoge.png        |
| wishRank   | number?        | 欲しい度(5段階評価)  | 1                          |
| wishSeason | string?        | ほしい時期           | クリスマス                 |
| wanterName | string?        | 欲しい人の名前       | 子供                       |
| urls       | array<string>? | URL配列              | http://***                 |
| memo       | string?        | メモ                 | おばあちゃんに買ってほしい |
| createdAt  | Timestmap      | 作成日時             | 1987-12-01 00:00:00        |
| updatedAt  | Timestmap      | 更新日時             | 1987-12-01 00:00:00        |

### groups/{groupId}/_ditems/{itemId}

削除した欲しい物情報を保持するコレクション

`items`コレクションとSameID構造で、構成も完全に一致するため割愛

### groups/{groupId}/purchases/{purchaseId}

欲しい物の購入情報を保持するコレクション

`items`コレクションとSameID構造とする

| Field     | Type       | Description                                | Sample              |
| --------- | ---------- | ------------------------------------------ | ------------------- |
| id        | string     | サロゲートキー(UUID)                       | XXXX (UUID)         |
| name      | string     | 欲しい物の商品名                           | ジャングルジム      |
| surprise  | boolean    | サプライズフラグ、子供にヒミツにするか否か | true                |
| price     | number     | 値段                                       | 1000                |
| planDate  | Timestamp? | 購入予定日                                 | 1987-12-01 00:00:00 |
| sentAt    | Timestamp? | 欲しい物を渡した日                         | 1987-12-01 00:00:00 |
| itemCount | int        | 登録された欲しい物の数                     | 10                  |
| premium   | bool       | プレミアムグループフラグ                   | true                |
| createdAt | Timestmap  | 作成日時                                   | 1987-12-01 00:00:00 |
| updatedAt | Timestmap  | 更新日時                                   | 1987-12-01 00:00:00 |
