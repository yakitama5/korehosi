import 'package:intl/intl.dart';

/// 数値型の拡張
/// application layer
extension NumForApplicationX on num {
  /// カンマ区切りの文字列にフォーマット
  String formatComma({
    int decimalDigits = 0,
  }) =>
      NumberFormat.currency(
        name: '',
        symbol: '',
        decimalDigits: decimalDigits,
      ).format(this);

  /// 通貨表記の文字列にフォーマット
  String formatCurrency({
    String? locale,
    int decimalDigits = 0,
  }) {
    final currency = NumberFormat.simpleCurrency(
      locale: locale,
      decimalDigits: decimalDigits,
    );

    return currency.format(this);
  }
}
