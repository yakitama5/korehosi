import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class ElevatedCard extends SingleChildStatelessWidget {
  const ElevatedCard({
    super.key,
    super.child,
    void Function()? onTap,
    void Function()? onLongPress,
  })  : _onTap = onTap,
        _onLongPress = onLongPress;

  final void Function()? _onTap;
  final void Function()? _onLongPress;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // Notes: 基本的な設定は公式ドキュメントに沿って設定
    // https://m3.material.io/components/cards/specs#9abbced9-d5d3-4893-9a67-031825205f06
    const padding = EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);

    return Card(
      child: InkWell(
        onTap: _onTap,
        onLongPress: _onLongPress,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}

class FilledCard extends SingleChildStatelessWidget {
  const FilledCard({
    super.key,
    super.child,
    void Function()? onTap,
    void Function()? onLongPress,
  })  : _onTap = onTap,
        _onLongPress = onLongPress;

  final void Function()? _onTap;
  final void Function()? _onLongPress;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // Notes: 基本的な設定は公式ドキュメントに沿って設定
    // https://m3.material.io/components/cards/specs#9abbced9-d5d3-4893-9a67-031825205f06
    const padding = EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);

    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: _onTap,
        onLongPress: _onLongPress,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}

class OutlinedCard extends SingleChildStatelessWidget {
  const OutlinedCard({
    super.key,
    super.child,
    void Function()? onTap,
    void Function()? onLongPress,
  })  : _onTap = onTap,
        _onLongPress = onLongPress;

  final void Function()? _onTap;
  final void Function()? _onLongPress;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // Notes: 基本的な設定は公式ドキュメントに沿って設定
    // https://m3.material.io/components/cards/specs#9abbced9-d5d3-4893-9a67-031825205f06
    final shape = BorderRadius.circular(12);
    const padding = EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: shape,
      ),
      child: InkWell(
        borderRadius: shape,
        onTap: _onTap,
        onLongPress: _onLongPress,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
