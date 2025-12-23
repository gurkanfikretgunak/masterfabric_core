import 'package:intl/intl.dart';

/// Helper class for currency formatting
class PriceInfoCurrencyHelper {
  /// Format amount as currency
  static String formatCurrency(
    double amount, {
    String? locale,
    String? symbol,
    int decimalPlaces = 2,
  }) {
    final formatter = NumberFormat.currency(
      locale: locale ?? 'en_US',
      symbol: symbol,
      decimalDigits: decimalPlaces,
    );
    return formatter.format(amount);
  }

  /// Format amount with custom symbol
  static String formatWithSymbol(
    double amount,
    String symbol, {
    int decimalPlaces = 2,
  }) {
    return formatCurrency(
      amount,
      symbol: symbol,
      decimalPlaces: decimalPlaces,
    );
  }

  /// Parse currency string to double
  static double? parseCurrency(String currencyString, {String? locale}) {
    try {
      final formatter = NumberFormat.currency(locale: locale ?? 'en_US');
      return formatter.parse(currencyString) as double?;
    } catch (e) {
      return null;
    }
  }
}
