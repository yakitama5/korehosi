import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavigatorPage extends HookWidget {
  const NavigatorPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final navigationItems = [
      _NavigationItem(
        icon: const Icon(Icons.shopping_bag_outlined),
        selectedIcon: const Icon(Icons.shopping_bag),
        label: i18n.app.wishList,
      ),
      _NavigationItem(
        icon: const Icon(Icons.analytics_outlined),
        selectedIcon: const Icon(Icons.analytics),
        label: i18n.app.analyze,
      ),
      _NavigationItem(
        icon: const Icon(Icons.settings_outlined),
        selectedIcon: const Icon(Icons.settings),
        label: i18n.app.settings,
      ),
    ];

    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return switch (breakpoint.name) {
      MOBILE => _NavigationBar(navigationShell, navigationItems),
      (_) => _NavigationRail(navigationShell, navigationItems),
    };
  }
}

class _NavigationBar extends HookWidget {
  const _NavigationBar(this.navigationShell, this.navigationItems);

  final StatefulNavigationShell navigationShell;
  final List<_NavigationItem> navigationItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        destinations: navigationItems
            .map(
              (e) => NavigationDestination(
                icon: e.icon,
                label: e.label,
                selectedIcon: e.selectedIcon,
              ),
            )
            .toList(),
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _onDestinationSelected,
      ),
    );
  }

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

class _NavigationRail extends HookWidget {
  const _NavigationRail(this.navigationShell, this.navigationItems);

  final StatefulNavigationShell navigationShell;
  final List<_NavigationItem> navigationItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: NavigationRail(
                  destinations: navigationItems
                      .map(
                        (e) => NavigationRailDestination(
                          label: Text(e.label),
                          // HACK(yakitama5): `Navigation rail`がTooltip非対応
                          /// 対応されたら書き換える
                          /// https://github.com/flutter/flutter/issues/113103
                          icon: Tooltip(message: e.label, child: e.icon),
                          selectedIcon: Tooltip(
                            message: e.label,
                            child: e.selectedIcon,
                          ),
                        ),
                      )
                      .toList(),
                  selectedIndex: navigationShell.currentIndex,
                  onDestinationSelected: _onDestinationSelected,
                ),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 1,
            width: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

class _NavigationItem {
  const _NavigationItem({
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });

  final Icon icon;
  final Icon selectedIcon;
  final String label;
}
