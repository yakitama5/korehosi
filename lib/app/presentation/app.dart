import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../application/config/app_config.dart';
import '../application/config/breakpoint_config.dart';
import '../application/model/breakpoint.dart';
import '../application/state/loading_provider.dart';
import '../application/state/locale_provider.dart';
import '../application/state/reactive_deep_link_provider.dart';
import '../application/state/theme_mode_provider.dart';
import '../application/validator/validation_messages.dart';
import 'routes/importer.dart';
import 'theme/importer.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Webは未対応なのでDynamicColorBuilderを避ける
    if (kIsWeb) {
      return _buildApp(context, ref);
    } else {
      // Material3対応
      // Note: https://pub.dev/packages/dynamic_color
      return DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) =>
            _buildApp(context, ref, lightDynamic, darkDynamic),
      );
    }
  }

  MaterialApp _buildApp(
    BuildContext context,
    WidgetRef ref, [
    ColorScheme? lightDynamic,
    ColorScheme? darkDynamic,
  ]) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);
    final themeData = context.themeData;

    return MaterialApp.router(
      title: appConfig.appName,
      builder: (context, child) => _AppBaseContainer(child: child),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme:
          createThemeData(themeData.platform, Brightness.light, lightDynamic),
      darkTheme:
          createThemeData(themeData.platform, Brightness.dark, darkDynamic),
      themeMode: themeMode,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      debugShowCheckedModeBanner: false,
      // アプリ全体のスクロール制御を変更
      scrollBehavior: ScrollConfiguration.of(context)
          .copyWith(physics: const BouncingScrollPhysics()),
      localeResolutionCallback: (locale, supportedLocales) {
        // ロケールの変更を通知
        if (locale != null) {
          WidgetsBinding.instance.addPostFrameCallback(
            (_) => ref
                .read(l10nProvider.notifier)
                .update((state) => lookupL10n(locale)),
          );
        }
        return locale;
      },
    );
  }
}

class _AppBaseContainer extends HookConsumerWidget {
  const _AppBaseContainer({required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリ内共通Providerの監視
    _dynamicLinkLister(context, ref);

    return ResponsiveBreakpoints.builder(
      child: Stack(
        children: [
          // HACK(yakitama5): SingleChildStatelssWidgetに変更したほうがきれい
          _ReactiveFormWrapper(_ResponsiveWrapper(child)),
          // 全画面共通のローディング表示
          const _GlobalIndicator(),
          // 画面遷移の検知
          const RouteObserverContainer(),
        ],
      ),
      breakpoints: breakpoints,
    );
  }

  void _dynamicLinkLister(BuildContext context, WidgetRef ref) {
    // Web版は対応していないため、対象外
    if (kIsWeb) {
      return;
    }

    // DynamicLinksのイベント判定
    ref.listen(
      reactiveDeepLinkProvider,
      (previous, next) async {
        // URLがなければスルー
        final uri = next.value;
        if (uri == null) {
          return;
        }

        // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
        ref.read(routerProvider).go(uri.path);
      },
    );
  }
}

class _ResponsiveWrapper extends HookConsumerWidget {
  const _ResponsiveWrapper(this.child);

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return MaxWidthBox(
      // 現状はタブレットまで対応
      maxWidth: AppBreakpoint.desktop.end,
      background: Container(color: colorScheme.background),
      child: ResponsiveScaledBox(
        width: ResponsiveValue<double>(
          context,
          conditionalValues: [
            Condition.equals(
              name: AppBreakpoint.mobile.name,
              value: AppBreakpoint.mobile.end,
            ),
            Condition.between(
              start: 700,
              end: AppBreakpoint.tablet.end.toInt(),
              value: 700,
            ),
            Condition.between(
              start: AppBreakpoint.tablet.end.toInt(),
              end: 1200,
              value: AppBreakpoint.tablet.end,
            ),
            Condition.between(
              start: 1200,
              end: 1400,
              value: 1300,
            ),
            Condition.between(
              start: 1400,
              end: AppBreakpoint.desktop.end.toInt(),
              value: 1600,
            ),
          ],
        ).value,
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }
}

class _ReactiveFormWrapper extends HookConsumerWidget {
  const _ReactiveFormWrapper(this.child);

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ReactiveFormConfig(
      validationMessages: {
        /// エラーメッセージの共通定義
        ValidationMessage.required: (error) => l10n.validErrorMessageRequired,
        CustomValidationMessage.url: (error) =>
            l10n.validErrorMessageUrlPattern,
      },
      child: child ?? const SizedBox.shrink(),
    );
  }
}

class _GlobalIndicator extends HookConsumerWidget {
  const _GlobalIndicator();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(loadingNotifierProvider);
    if (isLoading) {
      return const ColoredBox(
        color: Colors.black54,
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
