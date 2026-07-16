import 'package:flutter/material.dart';

import 'expressive_loading_indicator.dart';

/// Pull-to-refresh を Material 3 Expressive のローダーで表示する。
class ExpressiveRefreshIndicator extends StatefulWidget {
  const ExpressiveRefreshIndicator({
    super.key,
    required this.onRefresh,
    required this.child,
    this.displacement = 40,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.triggerMode = RefreshIndicatorTriggerMode.onEdge,
  });

  final RefreshCallback onRefresh;
  final Widget child;
  final double displacement;
  final ScrollNotificationPredicate notificationPredicate;
  final RefreshIndicatorTriggerMode triggerMode;

  @override
  State<ExpressiveRefreshIndicator> createState() =>
      _ExpressiveRefreshIndicatorState();
}

class _ExpressiveRefreshIndicatorState
    extends State<ExpressiveRefreshIndicator> {
  RefreshIndicatorStatus? _status;

  bool get _showIndicator => switch (_status) {
    RefreshIndicatorStatus.drag ||
    RefreshIndicatorStatus.armed ||
    RefreshIndicatorStatus.snap ||
    RefreshIndicatorStatus.refresh => true,
    _ => false,
  };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator.noSpinner(
          onRefresh: widget.onRefresh,
          onStatusChange: (status) => setState(() => _status = status),
          notificationPredicate: widget.notificationPredicate,
          triggerMode: widget.triggerMode,
          child: widget.child,
        ),
        if (_showIndicator)
          Positioned(
            top: widget.displacement,
            left: 0,
            right: 0,
            child: IgnorePointer(
              child: ExpressiveLoadingIndicator(
                contained: true,
                size: 24,
                semanticsLabel: MaterialLocalizations.of(
                  context,
                ).refreshIndicatorSemanticLabel,
              ),
            ),
          ),
      ],
    );
  }
}
