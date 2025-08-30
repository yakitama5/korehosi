import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/group/group_usecase.dart';
import '../../../application/usecase/group/state/share_link_page_providers.dart';
import '../../components/importer.dart';
import '../../routes/importer.dart';
import '../presentation_mixin.dart';

class ShareLinkPage extends HookConsumerWidget with PresentationMixin {
  const ShareLinkPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 画面描画と同時に参加用の処理を呼び出す
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _onBuild(context, ref);
        });
        return null;
      },
      [context.hashCode],
    );

    // 画面としてはずっとぐるぐる回るだけ
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }

  Future<void> _onBuild(BuildContext context, WidgetRef ref) async {
    await execute(
      context,
      action: () async {
        // 画面描画時にグループへの参加を行う
        final shareLinkId = ref.read(ShareLinkPageProviders.idProvider);
        await ref
            .read(groupUsecaseProvider)
            .joinGroup(shareLinkId: shareLinkId);

        if (context.mounted) {
          // ダイアログを表示
          await showAdaptiveOkDialog(
            context,
            title: i18n.app.joinedGroupTitle,
            message: i18n.app.joinedGroupMessage,
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
