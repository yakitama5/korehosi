import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/theme_mode_provider.dart';
import '../../hooks/importer.dart';
import 'branch_switcher.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({
    super.key,
    required this.children,
    required this.navigationShell,
  });

  final List<Widget> children;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return _MobileNavigator(children, navigationShell);
  }
}

class _MobileNavigator extends HookConsumerWidget {
  const _MobileNavigator(this.children, this.navigationShell);

  final List<Widget> children;
  final StatefulNavigationShell navigationShell;

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;
    final tabs = [
      NavigationDestination(
        icon: const Icon(Icons.shopping_bag_outlined),
        selectedIcon: const Icon(Icons.shopping_bag),
        label: l10n.wishList,
      ),
      NavigationDestination(
        icon: const Icon(Icons.analytics_outlined),
        selectedIcon: const Icon(Icons.analytics),
        label: l10n.analyze,
      ),
      NavigationDestination(
        icon: const Icon(Icons.settings_outlined),
        selectedIcon: const Icon(Icons.settings),
        label: l10n.settings,
      ),
    ];

    final rails = tabs
        .map(
          (e) => NavigationRailDestination(
            label: Text(e.label),
            // HACK(yakitama5): `Navigation rail`がTooltip非対応
            /// 対応されたら書き換える
            /// https://github.com/flutter/flutter/issues/113103
            icon: Tooltip(
              message: e.label,
              child: e.icon,
            ),
            selectedIcon: Tooltip(
              message: e.label,
              child: e.selectedIcon,
            ),
          ),
        )
        .toList();

    return AdaptiveLayout(
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.standard: SlotLayout.from(
            key: const Key('Body'),
            builder: (_) => BranchSwitcher(
              currentIndex: navigationShell.currentIndex,
              children: children,
            ),
          ),
        },
      ),
      primaryNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.large: SlotLayout.from(
            key: const Key('Navigation Rails'),
            inAnimation: AdaptiveScaffold.leftOutIn,
            outAnimation: AdaptiveScaffold.leftInOut,
            builder: (_) => AdaptiveScaffold.standardNavigationRail(
              destinations: rails,
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: _onDestinationSelected,
              trailing: const _ThemeModeButton(),
            ),
          ),
        },
      ),
      bottomNavigation: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          Breakpoints.smallAndUp: SlotLayout.from(
            key: const Key('Bottom Navigation Small'),
            inAnimation: AdaptiveScaffold.bottomToTop,
            outAnimation: AdaptiveScaffold.topToBottom,
            builder: (_) => AdaptiveScaffold.standardBottomNavigationBar(
              destinations: tabs,
              currentIndex: navigationShell.currentIndex,
              onDestinationSelected: _onDestinationSelected,
            ),
          ),
          Breakpoints.large: SlotLayoutConfig.empty(),
        },
      ),
    );
  }
}

class _ThemeModeButton extends HookConsumerWidget {
  const _ThemeModeButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final theme = useTheme();
    final brightness = theme.brightness;

    late final IconData iconData;
    late final ThemeMode themeMode;
    late final String tooltip;
    switch (brightness) {
      case Brightness.light:
        iconData = Icons.dark_mode;
        themeMode = ThemeMode.dark;
        tooltip = l10n.darkMode;
      case Brightness.dark:
        iconData = Icons.light_mode;
        themeMode = ThemeMode.light;
        tooltip = l10n.lightMode;
    }

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: IconButton(
        icon: Icon(iconData),
        tooltip: tooltip,
        onPressed: () =>
            ref.read(themeModeNotifierProvider.notifier).change(themeMode),
      ),
    );
  }
}
