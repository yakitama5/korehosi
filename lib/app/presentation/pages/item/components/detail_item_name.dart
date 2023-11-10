import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/state/locale_provider.dart';
import '../../../../application/usecase/item/state/item_page_providers.dart';
import '../../../components/importer.dart';

/// 明細画面用の欲しい物の名前キャプション
class DetailItemName extends HookConsumerWidget {
  const DetailItemName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final name = ref.watch(
      ItemPageProviders.itemProvider.select((value) => value.value?.name),
    );

    return TextWithLabel(
      name,
      label: l10n.name,
    );
  }
}
