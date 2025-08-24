import 'package:family_wish_list/app/application/config/breakpoint_config.dart';
import 'package:family_wish_list/app/presentation/app.dart';
import 'package:family_wish_list/app/presentation/theme/src/color_schemes.g.dart';
import 'package:family_wish_list/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:responsive_framework/responsive_framework.dart';

class _Wrapper extends SingleChildStatelessWidget {
  const _Wrapper({super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return ProviderScope(
      // `materialAppWrapper`は利用しない
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: lightColorScheme,
          fontFamily: 'Murecho',
        ),
        home: ResponsiveBreakpoints.builder(
          child: Nested(
            children: const [
              ReactiveFormWrapper(),
              ResponsiveWrapper(),
            ],
            child: child ?? const SizedBox.shrink(),
          ),
          breakpoints: breakpoints,
        ),
        localizationsDelegates: L10n.localizationsDelegates,
        locale: const Locale('ja'),
        supportedLocales: L10n.supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

Widget testableWidget(Widget child) {
  return _Wrapper(child: child);
}
