import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

import '../../../domain/user/entity/user.dart';
import '../../state/locale_provider.dart';
import '../run_usecase_mixin.dart';
import '../user/state/auth_user_provider.dart';

part 'group_share_usecase.g.dart';

@riverpod
GroupShareUsecase groupShareUsecase(GroupShareUsecaseRef ref) =>
    GroupShareUsecase(ref);

/// グループの共有に関するユースケース
class GroupShareUsecase with RunUsecaseMixin {
  const GroupShareUsecase(this.ref);

  final Ref ref;

  /// 招待メッセージをクリップボードにコピーする
  Future<void> copyMessage({
    required String shareUrl,
    required String groupName,
  }) =>
      execute(
        ref,
        action: () async {
          final shareText = await _createShareText(shareUrl, groupName);
          return Clipboard.setData(ClipboardData(text: shareText));
        },
        disableLoading: true,
      );

  /// 招待用のテキストと画像をシェアする
  /// シェアの方法などをOS側の機能を用いて選択させる
  Future<void> share({
    required String shareUrl,
    required String groupName,
    required XFile xFile,
  }) =>
      execute(
        ref,
        action: () async {
          // 招待用のテキストを生成
          final shareText = await _createShareText(shareUrl, groupName);

          // シェア
          await Share.shareXFiles([xFile], text: shareText);
        },
        disableLoading: true,
      );

  /// 招待用のQRコードを保存する
  Future<void> saveQrCode({
    required XFile xFile,
  }) =>
      execute(
        ref,
        action: () async {
          // `Uint8List`形式に変換
          final bytes = await xFile.readAsBytes();

          // 画像の保存
          await ImageGallerySaver.saveImage(bytes);
        },
        disableLoading: true,
      );

  /// 招待用のテキストを生成
  Future<String> _createShareText(String shareUrl, String groupName) async {
    final l10n = ref.read(l10nProvider);
    final userName = await ref
        .read(authUserProvider.selectAsync((user) => user.dispName(l10n)));

    return l10n.groupShareText(
      userName,
      groupName,
      shareUrl,
    );
  }
}
