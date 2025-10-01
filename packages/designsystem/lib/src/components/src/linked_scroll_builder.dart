import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

/// ScrollControllerを同期するためのWrapper Widget
class LinkedScrollBuilder extends StatefulWidget {
  const LinkedScrollBuilder({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    LinkedScrollControllerGroup controllerGroup,
    ({ScrollController one, ScrollController two}) controllers,
  ) builder;

  @override
  State<StatefulWidget> createState() => _LinkedScrollControllBuilderState();
}

class _LinkedScrollControllBuilderState extends State<LinkedScrollBuilder> {
  final LinkedScrollControllerGroup _controllerGroup =
      LinkedScrollControllerGroup();

  late final ScrollController _one;
  late final ScrollController _two;

  @override
  void initState() {
    super.initState();
    _one = _controllerGroup.addAndGet();
    _two = _controllerGroup.addAndGet();
  }

  @override
  void dispose() {
    _one.dispose();
    _two.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => widget.builder(
        context,
        _controllerGroup,
        (one: _one, two: _two),
      ),
    );
  }
}
