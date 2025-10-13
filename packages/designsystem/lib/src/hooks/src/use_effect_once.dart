import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// ビルド時に一度だけ呼び出される処理として利用
void useEffectOnce(ValueGetter<Dispose?> effect) => useEffect(effect, const []);
