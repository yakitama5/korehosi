import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

final class DesignsystemInitializer {
  DesignsystemInitializer._();

  static Future<void> initialize() async {
    // GoogleFontsの読み込みを待機
    await GoogleFonts.pendingFonts([GoogleFonts.notoSansJpTextTheme()]);
  }
}
