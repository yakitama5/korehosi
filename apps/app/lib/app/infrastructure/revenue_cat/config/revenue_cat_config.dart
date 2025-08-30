import 'package:flutter_app/env/env.dart' as p;
import 'package:flutter_app/env/env.dev.dart' as d;

import '../../../application/config/app_config.dart';
import '../../../application/model/flavor.dart';

/// AppStoreの課金情報キー
final revenueCatAppStoreKey = switch (appConfig.flavor) {
  Flavor.prod => p.Env.revenueCatKeyAppleStore,
  Flavor.dev => d.Env.revenueCatKeyAppleStore,
};

/// PlayStoreの課金情報キー
final revenueCatPlayStoreKey = switch (appConfig.flavor) {
  Flavor.prod => p.Env.revenueCatKeyPlayStore,
  Flavor.dev => d.Env.revenueCatKeyPlayStore,
};
