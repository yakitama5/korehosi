import 'package:flutter/foundation.dart';

import 'use_effect_once.dart';

/// StatefulWidgetの`initState`のように利用
void useInitState(VoidCallback initState) => useEffectOnce(() {
      initState();
      return null;
    });
