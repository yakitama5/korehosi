import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/items_card.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_view.dart';
import 'package:flutter_app/app/pages/item/components/items_group_selection_warning_listner.dart';
import 'package:flutter_app/app/pages/item/components/items_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/designsystem.dart';

class ItemsView extends HookConsumerWidget {
  const ItemsView({super.key, required this.viewLayout});

  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 先頭ページを固定で取得
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final result = ref.watch(searchItemsProvider(page: 1)).valueOrNull;

    return Nested(
      children: [
        const ItemsGroupSelectionWarningListner(),
        ItemsEmptyListner(totalCount: result?.totalCount),
      ],
      child: SliverSwitchLayoutViewBuilder(
        viewLayout: viewLayout,
        itemCount: result?.totalCount ?? itemsPageConfig.pageSize,
        itemBuilder: (context, index) {
          final page = index ~/ itemsPageConfig.pageSize + 1;
          final indexInPage = index % itemsPageConfig.pageSize;
          final response = ref.watch(searchItemsProvider(page: page));

          return response.when(
            data: (data) {
              // 空表示
              if (data.items.isEmpty) {
                return const SizedBox.shrink();
              }

              final item = data.items[indexInPage];
              return switch (viewLayout) {
                ViewLayout.grid => ItemsCard(
                  key: ValueKey(item),
                  item: item,
                  onTap: () => onSelect(context, ref),
                ),
                ViewLayout.list => ItemsListTile(
                  key: ValueKey(item),
                  item: item,
                  onTap: () => onSelect(context, ref),
                ),
              };
            },
            loading: () => _ShimmerTile(viewLayout: viewLayout),
            // TODO(yakitama5): エラー表示を分けて記載
            error: (error, __) => ErrorListTile(
              indexInPage: indexInPage,
              isLoading: response.isLoading,
              error: error.toString(),
              onRetry: () {
                ref.invalidate(searchItemsProvider(page: page));
              },
            ),
          );
        },
      ),
    );
  }

  void onSelect(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): 後から実装
  }
}

class _ShimmerTile extends StatelessWidget {
  const _ShimmerTile({required this.viewLayout});
  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context) {
    return switch (viewLayout) {
      ViewLayout.list => const _ShimmerListTile(),
      ViewLayout.grid => const ShimmerWidget.rectangular(height: 60),
    };
  }
}

class _ShimmerListTile extends StatelessWidget {
  const _ShimmerListTile();

  @override
  Widget build(BuildContext context) {
    // プライベートWidgetのためマジックナンバーを許容
    return const ListTile(
      title: ShimmerWidget.rectangular(height: 24),
      subtitle: ShimmerWidget.rectangular(height: 16),
      leading: ItemsShimmerListTileLeading(),
    );
  }
}
