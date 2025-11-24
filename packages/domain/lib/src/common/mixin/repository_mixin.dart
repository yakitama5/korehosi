import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/src/common/value_object/app_exception.dart';

/// Repositoryの共通処理 Mixin
mixin RepositoryMixin {
  /// エラーハンドリングをラップした実行処理
  Future<T> ensureDomainException<T>({
    required Future<T> Function() action,
  }) async {
    try {
      return await action();
    } on AppException catch (e) {
      // ドメインの例外としてハンドリングされていれば、そのままスロー
      logger.e('Repository rethrown AppException\n$e');
      rethrow;
    } on Exception catch (e) {
      // ドメインの例外としてハンドリングされていなければ、原因不明なエラーとして返却
      logger.e('Repository ensureDomainException\n$e');
      throw const UnknownException();
    }
  }
}
