import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/responsive_auto_scale_box.dart';
import 'package:flutter_app/app/hooks/src/use_theme.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_domain/core.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
    final appBuildConfig = ref.watch(appBuildConfigProvider);

    // Material3対応
    // Note: https://pub.dev/packages/dynamic_color
    return _SafetyDynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => MaterialApp.router(
        title: appBuildConfig.appName,
        builder: (context, child) =>
            _AppListener(child: _AppBaseContainer(child: child)),
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        theme: createThemeData(
          themeData.platform,
          Brightness.light,
          lightDynamic,
        ),
        darkTheme: createThemeData(
          themeData.platform,
          Brightness.dark,
          darkDynamic,
        ),
        themeMode: themeMode,
        locale: TranslationProvider.of(context).flutterLocale, // use provider
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        debugShowCheckedModeBanner: false,
        // アプリ全体のスクロール制御を変更
        scrollBehavior: ScrollConfiguration.of(
          context,
        ).copyWith(physics: const BouncingScrollPhysics()),
      ),
    );
  }
}

class _SafetyDynamicColorBuilder extends StatelessWidget {
  const _SafetyDynamicColorBuilder({required this.builder});

  final Widget Function(ColorScheme? lightDynamic, ColorScheme? darkDynamic)
  builder;

  @override
  Widget build(BuildContext context) => kIsWeb
      // Webは未対応なのでDynamicColorBuilderを避ける
      ? builder(null, null)
      : DynamicColorBuilder(
          builder: (lightDynamic, darkDynamic) {
            // パッケージ対応されるまで最新のColorSchemeに合わせて編集
            // Notes: https://github.com/material-foundation/flutter-packages/issues/582
            if (lightDynamic == null || darkDynamic == null) {
              return builder(null, null);
            }

            final result = _generateDynamicColourSchemes(
              lightDynamic,
              darkDynamic,
            );
            return builder(result.$1, result.$2);
          },
        );

  (ColorScheme light, ColorScheme dark) _generateDynamicColourSchemes(
    ColorScheme lightDynamic,
    ColorScheme darkDynamic,
  ) {
    final lightBase = ColorScheme.fromSeed(seedColor: lightDynamic.primary);
    final darkBase = ColorScheme.fromSeed(
      seedColor: darkDynamic.primary,
      brightness: Brightness.dark,
    );

    final lightAdditionalColours = _extractAdditionalColours(lightBase);
    final darkAdditionalColours = _extractAdditionalColours(darkBase);

    final lightScheme = _insertAdditionalColours(
      lightBase,
      lightAdditionalColours,
    );
    final darkScheme = _insertAdditionalColours(
      darkBase,
      darkAdditionalColours,
    );

    return (lightScheme.harmonized(), darkScheme.harmonized());
  }

  List<Color> _extractAdditionalColours(ColorScheme scheme) => [
    scheme.surface,
    scheme.surfaceDim,
    scheme.surfaceBright,
    scheme.surfaceContainerLowest,
    scheme.surfaceContainerLow,
    scheme.surfaceContainer,
    scheme.surfaceContainerHigh,
    scheme.surfaceContainerHighest,
  ];

  ColorScheme _insertAdditionalColours(
    ColorScheme scheme,
    List<Color> additionalColours,
  ) => scheme.copyWith(
    surface: additionalColours[0],
    surfaceDim: additionalColours[1],
    surfaceBright: additionalColours[2],
    surfaceContainerLowest: additionalColours[3],
    surfaceContainerLow: additionalColours[4],
    surfaceContainer: additionalColours[5],
    surfaceContainerHigh: additionalColours[6],
    surfaceContainerHighest: additionalColours[7],
  );
}

class _AppListener extends SingleChildStatelessWidget {
  const _AppListener({required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      child: child,
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
    ref.listen(reactiveDeepLinkProvider, (previous, next) async {
      // URLがなければスルー
      if (!next.hasValue) {
        return;
      }

      final uri = next.value;
      if (uri == null || uri.path.isEmpty) {
        return;
      }

      // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
      ref.read(routerProvider).go(uri.path);
    });
  }

  void _notificationLister(BuildContext context, WidgetRef ref) {
    // 通知イベント判定
    ref.listen(notificationMessageProvider, (previous, next) async {
      final message = next.value;
      final path = message?.data['path'];
      if (path == null) {
        return;
      }

      // GoRouterの定義よりも上位階層のため、Providerから遷移先を指定する
      ref.read(routerProvider).go(path as String);
    });
  }
}

class _AppBaseContainer extends SingleChildStatelessWidget {
  const _AppBaseContainer({required super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Nested(
      children: const [ReactiveFormWrapper(), ResponsiveAutoScaleBox()],
      child: Stack(
        children: [
          child ?? const SizedBox.shrink(),
          // 全画面共通のローディング表示
          const _GlobalIndicator(),
          // 画面遷移の検知
          const RouteObserverContainer(),
        ],
      ),
    );
  }
}

class ReactiveFormWrapper extends SingleChildStatelessWidget {
  const ReactiveFormWrapper({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => HookBuilder(
    builder: (context) {
      return ReactiveFormConfig(
        validationMessages: {
          /// エラーメッセージの共通定義
          ValidationMessage.required: (error) =>
              i18n.app.validErrorMessageRequired,
          CustomValidationMessage.url: (error) =>
              i18n.app.validErrorMessageUrlPattern,
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
        child: Center(child: CircularProgressIndicator.adaptive()),
      );
    }
    return const SizedBox.shrink();
  }
}
