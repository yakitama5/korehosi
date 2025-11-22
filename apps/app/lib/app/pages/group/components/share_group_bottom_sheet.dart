import 'dart:io' as io;
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:packages_application/group.dart';
import 'package:packages_core/util.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShareGroupBottomSheet extends HookConsumerWidget with PresentationMixin {
  ShareGroupBottomSheet({
    super.key,
    required this.groupName,
    required this.shareUrl,
  });

  static Future<void> show({
    required BuildContext context,
    bool useSafeArea = false,
    required String groupName,
    required String shareUrl,
  }) => showModalBottomSheet<void>(
    context: context,
    useSafeArea: true,
    builder: (context) =>
        ShareGroupBottomSheet(groupName: groupName, shareUrl: shareUrl),
  );

  final String groupName;
  final String shareUrl;
  final GlobalKey _qrImageKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();

    return BottomSheetColumn(
      children: [
        Center(
          child: Column(
            children: [
              RepaintBoundary(
                key: _qrImageKey,
                child: QrImageView(
                  backgroundColor: Colors.white,
                  data: shareUrl,
                  size: 160,
                ),
              ),
              const Gap(4),
              Text(
                i18n.group.groupPage.shareGroupCaption,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const Gap(8),
            ],
          ),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: LabelIconButton(
                label: Text(i18n.group.groupPage.copyLink),
                iconData: Icons.copy,
                onPressed: () => onCopy(context, ref),
              ),
            ),
            Expanded(
              child: LabelIconButton(
                label: Text(i18n.group.groupPage.shareGroup),
                iconData: Icons.share,
                onPressed: () => onShare(context, ref),
              ),
            ),
            if (!kIsWeb)
              Expanded(
                child: LabelIconButton(
                  label: Text(commonI18n.common.save),
                  iconData: Icons.save_alt,
                  onPressed: () => onSave(context, ref),
                ),
              ),
          ],
        ),
        const Gap(48),
      ],
    );
  }

  Future<void> onCopy(BuildContext context, WidgetRef ref) async {
    // クリップボードへコピー
    await execute(
      action: () => ref
          .read(groupShareUsecaseProvider)
          .copyMessage(shareUrl: shareUrl, groupName: groupName),
      successMessage: i18n.group.groupPage.copiedLink,
    );
  }

  Future<void> onShare(BuildContext context, WidgetRef ref) async {
    // 共有 (BottomSheetを表示)
    await execute(
      action: () async {
        // Widgetを画像形式に変換
        final xFile = await repaintBoundartKeyToXFile(_qrImageKey);

        // 共有
        await ref
            .read(groupShareUsecaseProvider)
            .share(shareUrl: shareUrl, groupName: groupName, xFile: xFile!);
      },
    );
  }

  Future<void> onSave(BuildContext context, WidgetRef ref) async {
    // 画像の保存
    await execute(
      action: () async {
        // Widgetを画像形式に変換
        final xFile = await repaintBoundartKeyToXFile(_qrImageKey);

        // 保存
        await ref.read(groupShareUsecaseProvider).saveQrCode(xFile: xFile!);
      },
      successMessage: i18n.group.groupPage.savedImage,
    );
  }

  /// Widgetのキーを元にXFileを生成する
  Future<XFile?> repaintBoundartKeyToXFile(GlobalKey key) async {
    // RenderObjectを取得
    final boundary = key.currentContext?.findRenderObject();
    if (boundary == null || boundary is! RenderRepaintBoundary) {
      return null;
    }

    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final bytes = byteData!.buffer.asUint8List();
    final temporaryFile = await _getTemporaryFile(bytes);
    final path = temporaryFile.path;

    return XFile(path);
  }

  /// キャッシュ領域にファイルを保存し、パスを取得する.
  Future<io.File> _getTemporaryFile(List<int> imageData) async {
    final directory = await getTemporaryDirectory();

    final fileName = uuid.v4();
    final exportFile = io.File('${directory.path}/$fileName.png');
    if (!exportFile.existsSync()) {
      await exportFile.create(recursive: true);
    }
    final file = await exportFile.writeAsBytes(imageData);
    return file;
  }
}
