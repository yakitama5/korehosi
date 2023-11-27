import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/usecase/analyze/state/buyer_name_suggestion.dart';
import '../../../components/importer.dart';

/// 購入者名の`FilterChip`
class BuyerNameFilterChip extends HookConsumerWidget {
  const BuyerNameFilterChip({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LeadingIconInputChip(
      label: const Text('購入者'),
      iconData: Icons.arrow_drop_down,
      onPressed: () async {
        // TODO(yakitama5): 購入者用のフィルターを表示/選択
        final suggestion = await ref.read(buyerNameSuggestionProvider.future);
        if (!context.mounted) {
          return;
        }

        await showModalBottomSheet<void>(
          context: context,
          builder: (_) {
            return BottomSheetColumn(
              children: suggestion.map(Text.new).toList(),
            );
          },
        );
      },
    );
  }
}
