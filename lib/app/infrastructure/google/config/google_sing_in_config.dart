import 'package:family_wish_list/env/env.dart' as p;
import 'package:family_wish_list/env/env.dev.dart' as d;

import '../../../application/config/app_config.dart';
import '../../../application/model/flavor.dart';

/// GoogleSignInに必要なクライアントID
final googleSigninClientId = switch (appConfig.flavor) {
  Flavor.prod => p.Env.googleClientId,
  Flavor.dev => d.Env.googleClientId,
};
