import 'package:intl/intl.dart';

/// 文字列型の拡張
extension StringForApplicationX on String {
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
