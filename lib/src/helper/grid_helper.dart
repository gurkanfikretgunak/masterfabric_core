import 'package:flutter/material.dart';

/// Helper class for grid layout calculations
class GridHelper {
  /// Calculate cross axis count based on screen width
  static int calculateCrossAxisCount(BuildContext context, {
    double itemWidth = 200,
    double spacing = 8,
    double padding = 16,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - (padding * 2);
    final count = ((availableWidth + spacing) / (itemWidth + spacing)).floor();
    return count > 0 ? count : 1;
  }

  /// Get grid spacing
  static double getGridSpacing(double spacing) => spacing;

  /// Default margin value for layouts
  static const double defaultMargin = 16.0;
  
  /// Default number of columns for dev grid
  static const int defaultColumns = 12;
  
  /// Default column width for dev grid
  static const double defaultColumnWidth = 16.0;
  
  /// Default column color for dev grid
  static const Color defaultColumnColor = Color(0x1A000000);
  
  /// Default margin color for dev grid
  static const Color defaultMarginColor = Color(0x0D000000);
}
