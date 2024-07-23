import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lineStart = Offset(size.width, 0);
    final lineEnd = Offset(0, size.height);

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (lineStart - lineEnd).distance * 0.7;

    final rect = Rect.fromCircle(center: center, radius: radius);

    Paint paintFill1 = Paint()
      ..shader = ui.Gradient.linear(
          Offset(size.width, 0),
          Offset(0, size.height),
          [const Color(0xfffcb444), const Color(0xffbc6ce4)],
          [0.00, 1.00])
      ..style = PaintingStyle.fill;

    // Adjust the sweep angle to create an arc instead of a semi-circle
    const startAngle = 0.0; // Starting angle in radians
    const sweepAngle = math.pi / 2; // Sweep angle in radians (90 degrees)

    canvas.drawArc(rect, startAngle, sweepAngle, false, paintFill1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
