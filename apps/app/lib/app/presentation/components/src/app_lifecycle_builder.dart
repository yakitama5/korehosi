import 'package:family_wish_list/app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppLifecycleBuilder extends HookWidget {
  const AppLifecycleBuilder({super.key, this.builder});

  final Widget Function(BuildContext context, AppLifecycleState state)? builder;

  @override
  Widget build(BuildContext context) {
    final appLifecycle = useState(AppLifecycleState.detached);
    useRef(AppLifecycleListener(onStateChange: (state) {
      logger.d(state.name);
      appLifecycle.value = state;
    }));

    if (builder == null) {
      return const SizedBox.shrink();
    }

    return builder!(context, appLifecycle.value);
  }
}
