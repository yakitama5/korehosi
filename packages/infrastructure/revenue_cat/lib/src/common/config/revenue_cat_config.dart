import 'package:flutter_app/env/env.dart' as p;
import 'package:flutter_app/env/env.dev.dart' as d;
import 'package:packages_domain/core.dart';

/// AppStoreの課金情報キー
final revenueCatAppStoreKey = switch (appConfig.flavor) {
  Flavor.prd => p.Env.revenueCatKeyAppleStore,
  Flavor.dev => d.Env.revenueCatKeyAppleStore,
};

/// PlayStoreの課金情報キー
final revenueCatPlayStoreKey = switch (appConfig.flavor) {
  Flavor.prd => p.Env.revenueCatKeyPlayStore,
  Flavor.dev => d.Env.revenueCatKeyPlayStore,
};
