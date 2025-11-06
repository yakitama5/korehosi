import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/group_select_icon_button.dart';
import 'package:flutter_app/app/pages/item/components/items_chips.dart';
import 'package:flutter_app/app/pages/item/components/items_view.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/widgets.dart';

class ItemsPage extends HookConsumerWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初期状態はドメイン層に定義
    final viewLayout = ref.watch(itemsViewLayoutNotifierProvider);
    final scrollController = useScrollController();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.read(itemUsecaseProvider).refreshSearchItems(),
        // HACK(yakitama5): SliverAppBar付きのこの構成を共通定義化する
        child: CustomScrollView(
          slivers: [
            const PinnedHeaderSliver(
              child: Material(child: SafeArea(child: SizedBox.shrink())),
            ),
            SliverAppBar(
              primary: false,
              title: Text(i18n.item.itemsPage.title),
              actions: const [GroupSelectIconButton()],
            ),
            const ItemsChips(),
            ItemsView(viewLayout: viewLayout),
          ],
        ),
      ),
      floatingActionButton: AnimatedSwitcherFab(
        // HACK(yakitama5):固定値にするしかない？
        /// 8の倍数ではないが、文字列が含まれるため許容
        expandWidth: 181,
        duration: const Duration(milliseconds: 150),
        onPressed: () => _onAdd(context, ref),
        icon: const Icon(Icons.add),
        label: Text(i18n.item.itemsPage.add),
        controller: scrollController,
      ),
    );
  }

  /// 追加ボタンが押下されたイベント
  Future<void> _onAdd(BuildContext context, WidgetRef ref) async {
    final currentGroup = await ref.read(currentGroupProvider.future);

    if (!context.mounted) {
      return;
    }

    // グループが選択されていなければ、警告ダイアログを表示
    if (currentGroup != null) {
      final messages = i18n.item.itemsPage.notSelectedGroupDialog;
      await showOkAlertDialog(
        context: context,
        title: messages.title,
        message: messages.message,
      );
      return;
    }

    // 問題なければ遷移
    const ItemCreateRouteData().go(context);
  }
}
