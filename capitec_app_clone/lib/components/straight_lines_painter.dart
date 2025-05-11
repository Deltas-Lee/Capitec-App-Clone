import 'package:flutter/material.dart';

/// Custom painter for the straight lines
class StraightLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.grey[400]!
          ..strokeWidth = 1.5
          ..style = PaintingStyle.stroke;

    final path = Path();
    // Draw from the bottom left to the bottom right
    path.moveTo(0, size.height);
    // Draw a line to the middle of the bottom edge
    path.lineTo(size.width / 2 - 30, size.height);

    // Draw a line to the middle of the top edge
    path.moveTo(size.width / 2 + 30, size.height);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
