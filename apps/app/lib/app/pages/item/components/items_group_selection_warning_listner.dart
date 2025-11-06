import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/not_group_view.dart';
import 'package:flutter_app/app/pages/item/components/list_loader_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/group.dart';
import 'package:packages_designsystem/widgets.dart';

/// ほしいもの一覧において、グループの選択状態に応じて警告を表示する
class ItemsGroupSelectionWarningListner extends SingleChildStatelessWidget {
  const ItemsGroupSelectionWarningListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (child == null) {
      return const SizedBox.shrink();
    }

    return Consumer(
      builder: (_, ref, _) {
        final currentGroup = ref.watch(currentGroupProvider);
        return currentGroup.when(
          data: (data) {
            if (data == null) {
              return const SliverFillRemaining(
                hasScrollBody: false,
                child: NotGroupView(),
              );
            }

            return child;
          },
          error: SliverErrorView.new,
          loading: () => const SliverFillRemaining(child: ListLoaderView()),
        );
      },
    );
  }
}
