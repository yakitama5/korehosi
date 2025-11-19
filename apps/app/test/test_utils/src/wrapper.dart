import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_designsystem/widgets.dart';

class _Wrapper extends SingleChildStatelessWidget {
  const _Wrapper({super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    LocaleSettings.setLocaleRaw('ja');
    return ProviderScope(
      // `materialAppWrapper`は利用しない
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: MaterialTheme.lightScheme(),
          fontFamily: 'Murecho',
        ),
        home: Nested(
          children: const [AppReactiveFormConfig(), ResponsiveAutoScaleBox()],
          child: child ?? const SizedBox.shrink(),
        ),
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        locale: const Locale('ja'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

Widget testableWidget(Widget child) {
  return _Wrapper(child: child);
}
