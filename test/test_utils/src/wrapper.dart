import 'package:family_wish_list/app/presentation/app.dart';
import 'package:family_wish_list/app/presentation/components/src/responsive_auto_scale_box.dart';
import 'package:family_wish_list/app/presentation/theme/src/color_schemes.g.dart';
import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

class _Wrapper extends SingleChildStatelessWidget {
  const _Wrapper({super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return TranslationProvider(
      child: ProviderScope(
        // `materialAppWrapper`は利用しない
        child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
            colorScheme: lightColorScheme,
            fontFamily: 'Murecho',
          ),
          home: Nested(
            children: const [
              ReactiveFormWrapper(),
              ResponsiveAutoScaleBox(),
            ],
            child: child ?? const SizedBox.shrink(),
          ),
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          locale: const Locale('ja'),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

Widget testableWidget(Widget child) {
  return _Wrapper(child: child);
}
