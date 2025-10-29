enum BusinessExceptionType {
  // 削除済
  deleted,
  // 更新対象なし
  updateTargetNotFound,
  // グループ未選択
  notSelectedGroup,
  // 未認証
  notAuth,
  // DynamicLink生成時の原因不明エラー
  createDynamicLinkUnknown,
  // グループ参加ポリシーエラー:参加済
  joinGroupPolicyJoinedGroup,
  // グループ参加ポリシーエラー:期限切れ
  joinGroupPolicyExpired,
  // グループ参加ポリシーエラー:未認証
  joinGroupPolicyNotAuth,
  // グループ参加ポリシーエラー:参加数超過
  joinGroupPolicyLimitOver,
  // グループ参加ポリシーエラー:無効な招待リンク
  joinGroupPolicyInvalidShareLink,
  // グループ参加ポリシーエラー:登録数超過
  registrationItemPolicyLimitOver,
  // サインインポリシー:連携済アカウント
  signInPolicyLinkedAccount,
  // Google認証:原因不明エラー
  googleSignInUnknown,
  // アプリ内購入:存在しない商品
  appInPurchasePolicyPackageNotExist,
  // アプリ内購入:無効な商品
  appInPurchasePolicyPackageNotActive,
}
