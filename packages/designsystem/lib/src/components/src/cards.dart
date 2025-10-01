import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

sealed class SingleChildCard extends SingleChildStatelessWidget {
  const SingleChildCard({
    super.key,
    super.child,
    this.onTap,
    this.onLongPress,
  });

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
}

class ElevatedCard extends SingleChildCard {
  const ElevatedCard({
    super.key,
    super.child,
    super.onTap,
    super.onLongPress,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // Notes: 基本的な設定は公式ドキュメントに沿って設定
    // https://m3.material.io/components/cards/specs#9abbced9-d5d3-4893-9a67-031825205f06
    const padding =
        EdgeInsetsDirectional.only(start: 16, end: 16, top: 8, bottom: 8);

    return Card(
      // InkWellのスプラッシュ表示をはみ出さないように指定
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}

class FilledCard extends SingleChildCard {
  const FilledCard({
    super.key,
    super.child,
    super.onTap,
    super.onLongPress,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // Notes: 基本的な設定は公式ドキュメントに沿って設定
    // https://m3.material.io/components/cards/specs#9abbced9-d5d3-4893-9a67-031825205f06
    const padding =
        EdgeInsetsDirectional.only(start: 16, end: 16, top: 12, bottom: 16);

    return Card.filled(
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}

class OutlinedCard extends SingleChildCard {
  const OutlinedCard({
    super.key,
    super.child,
    super.onTap,
    super.onLongPress,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // Notes: 基本的な設定は公式ドキュメントに沿って設定
    // https://m3.material.io/components/cards/specs#9abbced9-d5d3-4893-9a67-031825205f06
    final shape = BorderRadius.circular(12);

    return Card.outlined(
      child: InkWell(
        borderRadius: shape,
        onTap: onTap,
        onLongPress: onLongPress,
        child: child,
      ),
    );
  }
}

class OpenContainerCardWrapper<T> extends StatelessWidget {
  const OpenContainerCardWrapper({
    super.key,
    required this.closedBuilder,
    required this.openBuilder,
  });

  final CloseContainerBuilder closedBuilder;
  final OpenContainerBuilder<T> openBuilder;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return OpenContainer(
      closedBuilder: closedBuilder,
      openBuilder: openBuilder,

      // ClosedBuilderが表示されてしまう対応
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      closedColor: cs.surface,
      closedElevation: 0,
      tappable: false,
    );
  }
}
