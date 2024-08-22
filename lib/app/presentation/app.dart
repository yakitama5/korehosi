import 'package:dynamic_color/dynamic_color.dart';
import 'package:family_wish_list/app/application/usecase/system/app_usecase.dart';
import 'package:family_wish_list/app/presentation/hooks/importer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../application/config/app_config.dart';
import '../application/config/breakpoint_config.dart';
import '../application/model/breakpoint.dart';
import '../application/state/loading_provider.dart';
import '../application/state/locale_provider.dart';
import '../application/state/notification_message_provider.dart';
import '../application/state/reactive_deep_link_provider.dart';
import '../application/state/theme_mode_provider.dart';
import '../application/validator/validation_messages.dart';
import 'routes/importer.dart';
import 'theme/importer.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリ起動時の処理を行う
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(appUsecaseProvider).onLanched();
    });

    final themeData = useTheme();

    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);

    // Material3対応
    // Note: https://pub.dev/packages/dynamic_color
    return _SafetyDynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => MaterialApp.router(
        title: appConfig.appName,
        builder: (context, child) => _AppListener(
          child: _AppBaseContainer(child: child),
        ),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        theme: createThemeData(
          themeData.platform,
          Brightness.light,
          lightDynamic,
        ),
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
      ),
    );
  }
}

class _SafetyDynamicColorBuilder extends StatelessWidget {
  const _SafetyDynamicColorBuilder({required this.builder});

  final Widget Function(
    ColorScheme? lightDynamic,
    ColorScheme? darkDynamic,
  ) builder;

  @override
  Widget build(BuildContext context) => kIsWeb
      // Webは未対応なのでDynamicColorBuilderを避ける
      ? builder(null, null)
      : DynamicColorBuilder(
          builder: builder,
        );
}

class _AppListener extends SingleChildStatelessWidget {
  const _AppListener({required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (context, ref, child) {
        // アプリ内共通Providerの監視
        _dynamicLinkLister(context, ref);
        _notificationLister(context, ref);

        if (child == null) {
          return const SizedBox.shrink();
        }

        return child;
      },
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

  void _notificationLister(BuildContext context, WidgetRef ref) {
    // 通知イベント判定
    ref.listen(
      notificationMessageProvider,
      (previous, next) async {
        final message = next.value;
        final path = message?.data['path'];
        if (path == null) {
          return;
        }

        // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
        ref.read(routerProvider).go(path as String);
      },
    );
  }
}

class _AppBaseContainer extends SingleChildStatelessWidget {
  const _AppBaseContainer({required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      child: Stack(
        children: [
          Nested(
            children: const [
              ReactiveFormWrapper(),
              ResponsiveWrapper(),
            ],
            child: child,
          ),
          // 全画面共通のローディング表示
          const _GlobalIndicator(),
          // 画面遷移の検知
          const RouteObserverContainer(),
        ],
      ),
      breakpoints: breakpoints,
    );
  }
}

class ResponsiveWrapper extends SingleChildStatelessWidget {
  const ResponsiveWrapper({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => HookBuilder(
        builder: (context) {
          final colorScheme = useColorScheme();

          return MaxWidthBox(
            maxWidth: AppBreakpoint.desktopLarge.end.toDouble(),
            background: Container(color: colorScheme.surface),
            child: ResponsiveScaledBox(
              width: ResponsiveValue<double>(
                context,
                defaultValue: AppBreakpoint.mobile.value,
                conditionalValues: [
                  Condition.equals(
                    name: AppBreakpoint.mobile.name,
                    value: AppBreakpoint.mobile.value,
                  ),
                  Condition.between(
                    start: AppBreakpoint.tablet.start,
                    end: AppBreakpoint.tablet.end,
                    value: AppBreakpoint.tablet.value,
                  ),
                  Condition.between(
                    start: AppBreakpoint.desktopSmall.start,
                    end: AppBreakpoint.desktopSmall.end,
                    value: AppBreakpoint.desktopSmall.value,
                  ),
                  Condition.between(
                    start: AppBreakpoint.desktopMiddle.start,
                    end: AppBreakpoint.desktopMiddle.end,
                    value: AppBreakpoint.desktopMiddle.value,
                  ),
                  Condition.between(
                    start: AppBreakpoint.desktopLarge.start,
                    end: AppBreakpoint.desktopLarge.end,
                    value: AppBreakpoint.desktopLarge.value,
                  ),
                ],
              ).value,
              child: child ?? const SizedBox.shrink(),
            ),
          );
        },
      );
}

class ReactiveFormWrapper extends SingleChildStatelessWidget {
  const ReactiveFormWrapper({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => HookBuilder(
        builder: (context) {
          final l10n = useL10n();

          return ReactiveFormConfig(
            validationMessages: {
              /// エラーメッセージの共通定義
              ValidationMessage.required: (error) =>
                  l10n.validErrorMessageRequired,
              CustomValidationMessage.url: (error) =>
                  l10n.validErrorMessageUrlPattern,
            },
            child: child ?? const SizedBox.shrink(),
          );
        },
      );
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
