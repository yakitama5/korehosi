import 'package:flutter_app/env/env.dart' as p;
import 'package:flutter_app/env/env.dev.dart' as d;

import '../../../../application/config/app_config.dart';
import '../../../../application/model/flavor.dart';

/// 公開しているWebサイトのサイトキー
final recpthaSiteKey = switch (appConfig.flavor) {
  Flavor.prod => p.Env.recpthaSiteKey,
  Flavor.dev => d.Env.recpthaSiteKey,
};
