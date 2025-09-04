import 'package:flutter_app/env/env.dart' as p;
import 'package:flutter_app/env/env.dev.dart' as d;
import 'package:packages_domain/core.dart';

import '../../../../application/config/app_config.dart';

/// 公開しているWebサイトのサイトキー
final recpthaSiteKey = switch (appConfig.flavor) {
  Flavor.prd => p.Env.recpthaSiteKey,
  Flavor.dev => d.Env.recpthaSiteKey,
};
