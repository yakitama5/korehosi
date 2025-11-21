import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/not_group_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/group.dart';

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
        final asyncValue = ref.watch(currentGroupProvider);

        // 読み込み済 かつ グループが未選択の場合は警告表示
        if (asyncValue is AsyncData && asyncValue.value == null) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: NotGroupView(),
          );
        }

        // その他の場合は子要素を表示
        // エラーハンドリングなどは子要素で行う想定のため、このWidgetでは対応しない
        return child;
      },
    );
  }
}
