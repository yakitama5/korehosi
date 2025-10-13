import 'package:intl/intl.dart';

/// 文字列型の拡張
/// application layer
extension StringForApplicationX on String {
  /// 通貨表記の文字列を数値に変換
  num parseCurrency({
    String? locale,
    int decimalDigits = 0,
  }) {
    final formatter = NumberFormat.currency(
      locale: locale,
      name: '',
      symbol: '',
      decimalDigits: decimalDigits,
    );

    return formatter.parse(this);
  }
}
