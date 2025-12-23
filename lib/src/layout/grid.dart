import 'package:flutter/material.dart';
import 'package:masterfabric_core/src/helper/grid_helper.dart';

class DevGridOverlay extends StatelessWidget {
  final int columns;
  final double margin;
  final double columnWidth;
  final Color? columnColor;
  final Color? marginColor;

  const DevGridOverlay({
    super.key,
    this.columns = GridHelper.defaultColumns,
    this.margin = GridHelper.defaultMargin,
    this.columnWidth = GridHelper.defaultColumnWidth,
    this.columnColor,
    this.marginColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color resolvedColumnColor =
        columnColor ?? GridHelper.defaultColumnColor;
    final Color resolvedMarginColor =
        marginColor ?? GridHelper.defaultMarginColor;

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      removeLeft: true,
      removeRight: true,
      child: _buildGrid(context, resolvedColumnColor, resolvedMarginColor),
    );
  }

  Widget _buildGrid(BuildContext context, Color resolvedColumnColor,
      Color resolvedMarginColor) {
    final screenWidth = MediaQuery.of(context).size.width;
    final totalFixed = 2 * margin + columns * columnWidth;
    final gutterCount = columns - 1;
    final gutter =
        gutterCount > 0 ? (screenWidth - totalFixed) / gutterCount : 0.0;

    return IgnorePointer(
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            size: Size(screenWidth, double.infinity),
            painter: _FixedWidthGridPainter(
              columns: columns,
              columnWidth: columnWidth,
              gutter: gutter,
              margin: margin,
              columnColor: resolvedColumnColor,
              marginColor: resolvedMarginColor,
              screenWidth: screenWidth,
            ),
          ),
        ],
      ),
    );
  }
}

class _FixedWidthGridPainter extends CustomPainter {
  final int columns;
  final double columnWidth;
  final double gutter;
  final double margin;
  final Color columnColor;
  final Color marginColor;
  final double screenWidth;

  _FixedWidthGridPainter({
    required this.columns,
    required this.columnWidth,
    required this.gutter,
    required this.margin,
    required this.columnColor,
    required this.marginColor,
    required this.screenWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Draw left margin
    final leftMarginRect = Rect.fromLTWH(0.0, 0.0, margin, size.height);
    canvas.drawRect(leftMarginRect, Paint()..color = marginColor);
    // Draw columns
    final columnPaint = Paint()..color = columnColor;
    for (int i = 0; i < columns; i++) {
      final double left = margin + i * (columnWidth + gutter);
      final rect = Rect.fromLTWH(left, 0.0, columnWidth, size.height);
      canvas.drawRect(rect, columnPaint);
    }
    // Draw right margin
    final rightMarginLeft = screenWidth - margin;
    final rightMarginRect =
        Rect.fromLTWH(rightMarginLeft, 0.0, margin, size.height);
    canvas.drawRect(rightMarginRect, Paint()..color = marginColor);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Grid layout system utilities
class Grid {
  /// Calculate cross axis count based on screen width
  static int calculateCrossAxisCount(
    BuildContext context, {
    double itemWidth = 200,
    double spacing = 8,
    double padding = 16,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - (padding * 2);
    final count = ((availableWidth + spacing) / (itemWidth + spacing)).floor();
    return count > 0 ? count : 1;
  }

  /// Get responsive grid columns
  static int getResponsiveColumns(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1200) return 4;
    if (width > 800) return 3;
    if (width > 600) return 2;
    return 1;
  }

  /// Create a responsive grid view
  static Widget createResponsiveGrid({
    required List<Widget> children,
    double spacing = 8,
    double runSpacing = 8,
    EdgeInsets padding = EdgeInsets.zero,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = getResponsiveColumns(context);
        return GridView.builder(
          padding: padding,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: spacing,
            mainAxisSpacing: runSpacing,
          ),
          itemCount: children.length,
          itemBuilder: (context, index) => children[index],
        );
      },
    );
  }
}
