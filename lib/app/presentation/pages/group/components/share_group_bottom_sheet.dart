import 'dart:io' as io;
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uuid/uuid.dart';

import '../../../../application/state/locale_provider.dart';
import '../../../../application/usecase/group/group_share_usecase.dart';
import '../../../components/importer.dart';
import '../../../hooks/importer.dart';
import '../../presentation_mixin.dart';

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
  }) =>
      showModalBottomSheet<void>(
        context: context,
        useSafeArea: true,
        builder: (context) => ShareGroupBottomSheet(
          groupName: groupName,
          shareUrl: shareUrl,
        ),
      );

  final String groupName;
  final String shareUrl;
  final GlobalKey _qrImageKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
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
                l10n.shareCaption,
                style: theme.textTheme.bodyMedium
                    ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
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
                label: Text(l10n.copy),
                iconData: Icons.copy,
                onPressed: () => onCopy(context, ref),
              ),
            ),
            Expanded(
              child: LabelIconButton(
                label: Text(l10n.share),
                iconData: Icons.share,
                onPressed: () => onShare(context, ref),
              ),
            ),
            if (!kIsWeb)
              Expanded(
                child: LabelIconButton(
                  label: Text(l10n.save),
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
    final l10n = ref.read(l10nProvider);

    // クリップボードへコピー
    await execute(
      context,
      action: () => ref
          .read(groupShareUsecaseProvider)
          .copyMessage(shareUrl: shareUrl, groupName: groupName),
      successMessage: l10n.copied,
    );
  }

  Future<void> onShare(BuildContext context, WidgetRef ref) async {
    // 共有 (BottomSheetを表示)
    await execute(
      context,
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
    final l10n = ref.read(l10nProvider);

    // 画像の保存
    await execute(
      context,
      action: () async {
        // Widgetを画像形式に変換
        final xFile = await repaintBoundartKeyToXFile(_qrImageKey);

        // 保存
        await ref.read(groupShareUsecaseProvider).saveQrCode(xFile: xFile!);
      },
      successMessage: l10n.saved,
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

    final uuid = const Uuid().v4();
    final exportFile = io.File('${directory.path}/$uuid.png');
    if (!exportFile.existsSync()) {
      await exportFile.create(recursive: true);
    }
    final file = await exportFile.writeAsBytes(imageData);
    return file;
  }
}
