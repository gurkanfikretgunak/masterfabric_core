/// Extension methods for double values
extension DoubleExtension on double {
  /// Format as currency
  String toCurrency({String symbol = '\$', int decimalPlaces = 2}) {
    return '$symbol${toStringAsFixed(decimalPlaces)}';
  }

  /// Format as percentage
  String toPercentage({int decimalPlaces = 2}) {
    return '${toStringAsFixed(decimalPlaces)}%';
  }

  /// Format with thousand separators
  String toFormattedString({int decimalPlaces = 2}) {
    final parts = toStringAsFixed(decimalPlaces).split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '';

    final buffer = StringBuffer();
    for (int i = 0; i < integerPart.length; i++) {
      if (i > 0 && (integerPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(integerPart[i]);
    }

    return decimalPart.isNotEmpty ? '${buffer.toString()}.$decimalPart' : buffer.toString();
  }

  /// Round to nearest value
  double roundToNearest(double nearest) {
    return (this / nearest).round() * nearest;
  }
}
