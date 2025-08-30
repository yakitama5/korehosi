import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/usecase/analyze/state/buyer_filter_notifier_provider.dart';
import '../../../../application/usecase/purchase/state/buyer_name_suggestion.dart';
import '../../../components/importer.dart';

/// 購入者名の`FilterChip`
class BuyerNameFilterChip extends HookConsumerWidget {
  const BuyerNameFilterChip({super.key});

  // 'すべて'の選択肢キー
  static const String _allKey = 'all';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final defaultTitle = i18n.app.buyerName;
    final allLabel = i18n.app.all;

    final selectName = ref.watch(buyerFilterNotifierProvider);
    final selected = selectName != null;

    return LeadingIconInputChip(
      label: Text(
        selectName ?? defaultTitle,
        overflow: TextOverflow.ellipsis,
      ),
      iconData: Icons.arrow_drop_down,
      selected: selected,
      showCheckmark: selected,
      onPressed: () async {
        final buyerNames = await ref.read(buyerNameSuggestionProvider.future);
        if (!context.mounted) {
          return;
        }

        final actions = [
          // 選択肢に'すべて'を追加
          AlertDialogAction<String>(key: _allKey, label: allLabel),

          // 重複を削除しているため、keyも同値を設定
          ...buyerNames.map(
            (e) => AlertDialogAction<String>(
              key: e,
              label: e,
            ),
          ),
        ];

        final input = await showConfirmationDialog<String>(
          context: context,
          title: defaultTitle,
          // 未選択であれば、'すべて'を選択した状態がデフォルト
          initialSelectedActionKey: selectName ?? _allKey,
          actions: actions,
        );

        // 入力内容に応じて状態を更新
        final notifier = ref.read(buyerFilterNotifierProvider.notifier);
        switch (input) {
          case null:
            return;
          case _allKey:
            notifier.reset();
          default:
            notifier.update(input);
        }
      },
    );
  }
}
