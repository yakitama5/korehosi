import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/app_reactive_form_config.dart';
import 'package:flutter_app/app/components/src/dynamic_link_listner.dart';
import 'package:flutter_app/app/components/src/notification_click_listner.dart';
import 'package:flutter_app/app/debug/components/device_preview_wrapper.dart';
import 'package:flutter_app/app/routes/importer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_designsystem/widgets.dart';

class App extends HookConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリの共通情報
    final appBuildConfig = ref.watch(appBuildConfigProvider);

    // テーマ設定
    final themeMode = ref.watch(themeModeProvider);
    final lightTheme = ref.watch(
      appThemeProvider(brightness: Brightness.light),
    );
    final darkTheme = ref.watch(appThemeProvider(brightness: Brightness.dark));

    return MaterialApp.router(
      title: appBuildConfig.appName,
      builder: (_, child) => Nested(
        children: const [
          // TODO(yakitama5): TEST
          ResponsiveAutoScaleBox(),
          LoaderOverlay(),
          AppUpdateListner(),
          DevicePreviewSingleChildContainer(),
          AppReactiveFormConfig(),
          // RouteObserverContainer(),
          DynamicLinkListner(),
          NotificationClickListner(),
        ],
        child: child,
      ),
      scrollBehavior: ScrollConfiguration.of(
        context,
      ).copyWith(physics: const BouncingScrollPhysics()),

      // Router
      routerConfig: ref.watch(routerProvider),

      // Slang
      locale:
          DevicePreview.locale(context) ??
          TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      scaffoldMessengerKey: SnackBarManager.rootScaffoldMessengerKey,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
    );
  }
}
