import 'package:flutter_app/env/env.dart' as p;
import 'package:flutter_app/env/env.dev.dart' as d;
import 'package:packages_domain/core.dart';

import '../../../application/config/app_config.dart';

/// GoogleSignInに必要なクライアントID
final googleSigninClientId = switch (appConfig.flavor) {
  Flavor.prd => p.Env.googleClientId,
  Flavor.dev => d.Env.googleClientId,
};
