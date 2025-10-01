import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

import 'i18n/strings.g.dart';

Translations get commonI18n => i18n;

class DesignsystemTranslationProvider extends SingleChildStatelessWidget {
  const DesignsystemTranslationProvider({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(child: child ?? const SizedBox.shrink());
}
