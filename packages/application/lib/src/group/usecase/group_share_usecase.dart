import 'package:flutter/services.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:packages_application/i18n/strings.g.dart';
import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_application/src/user/extension/user_mixin.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'group_share_usecase.g.dart';

@Riverpod(keepAlive: true)
GroupShareUsecase groupShareUsecase(Ref ref) => GroupShareUsecase(ref);

/// グループの共有に関するユースケース
class GroupShareUsecase with RunUsecaseMixin {
  const GroupShareUsecase(this.ref);

  final Ref ref;

  /// 招待メッセージをクリップボードにコピーする
  Future<void> copyMessage({
    required String shareUrl,
    required String groupName,
  }) => execute(
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
  }) => execute(
    ref,
    action: () async {
      // 招待用のテキストを生成
      final shareText = await _createShareText(shareUrl, groupName);

      // シェア
      await SharePlus.instance.share(
        ShareParams(files: [xFile], text: shareText),
      );
    },
    disableLoading: true,
  );

  /// 招待用のQRコードを保存する
  Future<void> saveQrCode({required XFile xFile}) => execute(
    ref,
    action: () async {
      // `Uint8List`形式に変換
      final bytes = await xFile.readAsBytes();

      // 画像の保存
      await ImageGallerySaverPlus.saveImage(bytes);
    },
    disableLoading: true,
  );

  /// 招待用のテキストを生成
  Future<String> _createShareText(String shareUrl, String groupName) async {
    final userName = await ref.read(
      authUserProvider.selectAsync((user) => user.dispName),
    );

    return i18n.group.groupShareText(
      user: userName,
      group: groupName,
      url: shareUrl,
    );
  }
}
