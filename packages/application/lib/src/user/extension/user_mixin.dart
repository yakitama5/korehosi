import 'package:packages_application/i18n/strings.g.dart';
import 'package:packages_domain/user.dart';

extension UserX on User? {
  String get dispName {
    // ユーザー自体が存在しなければ削除済ユーザーとして表示する
    if (this == null) {
      return i18n.user.deletedUser;
    }

    // 名称が未設定の場合は未設定のラベルを表示
    return this!.name ?? i18n.user.unset;
  }
}
