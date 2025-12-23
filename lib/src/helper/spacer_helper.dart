import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';

/// Enum for all core spacer types
enum CoreSpacerType {
  navbar,
  footer,
  content,
  section,
  horizontal,
  vertical,
  // Add more as needed
}

class SpacerConfig {
  final double size;
  final Axis direction;
  final Color color;

  const SpacerConfig(this.size, this.direction, this.color);
}

/// Helper class for UI spacing utilities
class SpacerHelper {
  static SpacerConfig configOf(CoreSpacerType type) {
    switch (type) {
      case CoreSpacerType.navbar:
        return SpacerConfig(24, Axis.vertical, OsmeaColors.nordicBlue);
      case CoreSpacerType.footer:
        return SpacerConfig(36, Axis.vertical, OsmeaColors.nordicBlue);
      case CoreSpacerType.content:
        return SpacerConfig(16, Axis.vertical, OsmeaColors.forestHeart);
      case CoreSpacerType.section:
        return SpacerConfig(32, Axis.vertical, OsmeaColors.pineGrove);
      case CoreSpacerType.horizontal:
        return SpacerConfig(16, Axis.horizontal, OsmeaColors.deepSea);
      case CoreSpacerType.vertical:
        return SpacerConfig(16, Axis.vertical, OsmeaColors.sunsetGlow);
    }
  }

  /// Get vertical spacing
  static Widget vertical(double height) {
    return SizedBox(height: height);
  }

  /// Get horizontal spacing
  static Widget horizontal(double width) {
    return SizedBox(width: width);
  }

  /// Get spacing in both directions
  static Widget box({double? width, double? height}) {
    return SizedBox(width: width, height: height);
  }

  /// Get standard vertical spacing (8.0)
  static Widget get verticalSmall => vertical(8.0);

  /// Get standard vertical spacing (16.0)
  static Widget get verticalMedium => vertical(16.0);

  /// Get standard vertical spacing (24.0)
  static Widget get verticalLarge => vertical(24.0);

  /// Get standard horizontal spacing (8.0)
  static Widget get horizontalSmall => horizontal(8.0);

  /// Get standard horizontal spacing (16.0)
  static Widget get horizontalMedium => horizontal(16.0);

  /// Get standard horizontal spacing (24.0)
  static Widget get horizontalLarge => horizontal(24.0);
}
