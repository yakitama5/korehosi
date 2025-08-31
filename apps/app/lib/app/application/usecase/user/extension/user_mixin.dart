import 'package:cores_domain/user.dart';
import 'package:flutter_app/i18n/strings.g.dart';

extension UserX on User? {
  String get dispName {
    // ユーザー自体が存在しなければ削除済ユーザーとして表示する
    if (this == null) {
      return i18n.app.deletedUser;
    }

    // 名称が未設定の場合は未設定のラベルを表示
    return this!.name ?? i18n.app.unset;
  }
}
