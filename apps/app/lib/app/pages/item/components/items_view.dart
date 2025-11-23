import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/items_card.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_view.dart';
import 'package:flutter_app/app/pages/item/components/items_error_list_tile.dart';
import 'package:flutter_app/app/pages/item/components/items_group_selection_warning_listner.dart';
import 'package:flutter_app/app/pages/item/components/items_list_tile.dart';
import 'package:flutter_app/app/routes/importer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/item.dart';

class ItemsView extends HookConsumerWidget {
  const ItemsView({super.key, required this.viewLayout});

  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 先頭ページを固定で取得
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final result = ref.watch(searchItemsProvider(page: 1)).value;

    return Nested(
      children: const [
        ItemsGroupSelectionWarningListner(),
        ItemsEmptyListner(),
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
                  onTap: () => onSelect(context, ref, item.id),
                ),
                ViewLayout.list => ItemsListTile(
                  key: ValueKey(item),
                  item: item,
                  onTap: () => onSelect(context, ref, item.id),
                ),
              };
            },
            loading: () => _ShimmerTile(viewLayout: viewLayout),
            error: (error, _) => _ErrorView(
              viewLayout: viewLayout,
              error: error,
              isLoading: response.isLoading,
              indexInPage: indexInPage,
              onRetry: ref.read(itemUsecaseProvider).refreshSearchItems,
            ),
          );
        },
      ),
    );
  }

  void onSelect(BuildContext context, WidgetRef ref, ItemId itemId) {
    ItemRouteData(itemId.value).go(context);
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({
    required this.viewLayout,
    required this.error,
    required this.isLoading,
    required this.indexInPage,
    this.onRetry,
  });

  final ViewLayout viewLayout;
  final bool isLoading;
  final int indexInPage;
  final Object error;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return switch (viewLayout) {
      ViewLayout.grid => ItemsErrorCard(
        indexInPage: indexInPage,
        isLoading: isLoading,
        error: error.toString(),
        onRetry: onRetry,
      ),
      ViewLayout.list => ItemsErrorListTile(
        indexInPage: indexInPage,
        isLoading: isLoading,
        error: error.toString(),
        onRetry: onRetry,
      ),
    };
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
