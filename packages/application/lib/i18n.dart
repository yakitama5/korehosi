import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

import 'i18n/strings.g.dart';

Translations get applicationI18n => i18n;

class ApplicationTranslationProvider extends SingleChildStatelessWidget {
  const ApplicationTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(child: child ?? const SizedBox.shrink());
}
