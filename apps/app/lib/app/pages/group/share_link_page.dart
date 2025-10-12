import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_designsystem/widgets.dart';

class ShareLinkPage extends HookConsumerWidget with PresentationMixin {
  const ShareLinkPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 画面描画と同時に参加用の処理を呼び出す
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _onBuild(context, ref);
      });
      return null;
    }, [context.hashCode]);

    // 画面としてはずっとぐるぐる回るだけ
    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Future<void> _onBuild(BuildContext context, WidgetRef ref) async {
    await execute(
      action: () async {
        // 画面描画時にグループへの参加を行う
        final shareLinkId = ref.read(ShareLinkPageProviders.idProvider);
        await ref
            .read(groupUsecaseProvider)
            .joinGroup(shareLinkId: shareLinkId);

        if (context.mounted) {
          // ダイアログを表示
          final messages = i18n.group.shareLinkPage.joinedGroupDialog;
          await showOkAlertDialog(
            context: context,
            title: messages.title,
            message: messages.message,
          );
        }
      },
    );

    // 結果がどうであれ、グループ一覧に飛ばす
    if (context.mounted) {
      const GroupsRouteData().go(context);
    }
  }
}
