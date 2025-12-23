import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/helper/spacer_helper.dart';
import 'package:masterfabric_core/src/base/master_view/master_app.dart' show globalDevModeSpacer;

class CoreSpacer extends StatelessWidget {
  final CoreSpacerType type;
  final Key? widgetKey;

  const CoreSpacer(this.type, {super.key, this.widgetKey});

  @override
  Widget build(BuildContext context) {
    final config = SpacerHelper.configOf(type);
    final Widget spacer = config.direction == Axis.vertical
        ? SizedBox(height: config.size, key: widgetKey)
        : SizedBox(width: config.size, key: widgetKey);

    if (!kDebugMode || !globalDevModeSpacer) return spacer;

    // Show colored container in debug/dev mode
    return config.direction == Axis.vertical
        ? Container(
            height: config.size,
            width: double.infinity,
            color: config.color.withAlpha((0.5 * 255).toInt()),
            alignment: Alignment.center,
            child: Text('${config.size.toInt()}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          )
        : Container(
            width: config.size,
            height: 40,
            color: config.color.withAlpha((0.7 * 255).toInt()),
            alignment: Alignment.center,
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                '${config.size.toInt()}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}

/// Spacing utilities for consistent UI spacing
class Spacer {
  /// Vertical spacing
  static Widget vertical(double height) {
    return SizedBox(height: height);
  }

  /// Horizontal spacing
  static Widget horizontal(double width) {
    return SizedBox(width: width);
  }

  /// Box spacing (both directions)
  static Widget box({double? width, double? height}) {
    return SizedBox(width: width, height: height);
  }

  /// Standard spacing values
  static Widget get xs => vertical(4.0);
  static Widget get sm => vertical(8.0);
  static Widget get md => vertical(16.0);
  static Widget get lg => vertical(24.0);
  static Widget get xl => vertical(32.0);
  static Widget get xxl => vertical(48.0);

  /// Horizontal spacing values
  static Widget get hXs => horizontal(4.0);
  static Widget get hSm => horizontal(8.0);
  static Widget get hMd => horizontal(16.0);
  static Widget get hLg => horizontal(24.0);
  static Widget get hXl => horizontal(32.0);
  static Widget get hXxl => horizontal(48.0);
}
