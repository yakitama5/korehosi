import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/state/locale_provider.dart';
import '../../../../application/usecase/analyze/state/buyer_name_suggestion.dart';
import '../../../components/importer.dart';

/// 購入者名の`FilterChip`
class BuyerNameFilterChip extends HookConsumerWidget {
  const BuyerNameFilterChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectName = useState<String?>(null);
    final selected = selectName.value != null;
    final l10n = ref.watch(l10nProvider);
    final defaultTitle = l10n.buyerName;
    final allKey = l10n.all;

    return LeadingIconInputChip(
      label: Text(selectName.value ?? defaultTitle),
      iconData: Icons.arrow_drop_down,
      selected: selected,
      showCheckmark: selected,
      onPressed: () async {
        final buyerNames = await ref.read(buyerNameSuggestionProvider.future);
        if (!context.mounted) {
          return;
        }

        // 選択肢に`すべて`を追加して表示
        final actions = [
          allKey,
          ...buyerNames,
        ];
        final input = await showConfirmationDialog<String>(
          context: context,
          title: defaultTitle,
          initialSelectedActionKey: selectName.value,
          actions: actions
              .map(
                (e) => AlertDialogAction<String>(
                  key: e,
                  label: e,
                ),
              )
              .toList(),
        );

        // 定数でないと`swtich`は使えないので、`if`で愚直に対応
        if (input == null) {
          return;
        } else if (input == allKey) {
          selectName.value = null;
        } else {
          selectName.value = input;
        }
      },
    );
  }
}
