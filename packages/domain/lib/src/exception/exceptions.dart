/// サインインの際に権限が不足している際のException
class SignInPermissionException implements Exception {}

/// 必要なレコードを削除しようとした際のException
class RequiredRecordExistsException implements Exception {
  const RequiredRecordExistsException(this.errorMessage);
  final String errorMessage;
}

/// 削除に権限が不足している際のException
class DeletePermissionException implements Exception {
  const DeletePermissionException(this.errorMessage);
  final String errorMessage;
}

/// アカウント連携時のException
class AccountLinkException implements Exception {
  const AccountLinkException();
}

/// 業務不整合が発生した際のException
class BusinessException implements Exception {
  BusinessException(this.errorMessage);
  final String errorMessage;
}

/// 更新対象が見つからない場合のException
class UpdateTargetNotFoundException implements Exception {
  UpdateTargetNotFoundException();
}
