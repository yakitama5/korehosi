import 'package:logger/logger.dart';

/// ロガー
/// アプリの外という意味では、厳密にはインフラ層だが、利便性を考慮し許容
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1, // 表示されるコールスタックの数
    errorMethodCount: 5, // 表示されるスタックトレースのコールスタックの数
  ),
);
