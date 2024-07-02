import 'package:flutter/material.dart';
import 'package:masked_game/models/sketch_model.dart';

class SketchPainter extends CustomPainter {
  final List<SketchModel> sketches;

  SketchPainter({required this.sketches});

  @override
  void paint(Canvas canvas, Size size) {
    for (final sketch in sketches) {
      var points = sketch.points;
      if (points.isEmpty) {
        return;
      }

      final path = Path();
      path.moveTo(points.first.dx, points.first.dy);
      if (points.length == 1) {
        path.addOval(
          Rect.fromCircle(
            center: Offset(points.first.dx, points.first.dy),
            radius: 1,
          ),
        );
      }
      for (int i = 1; i < points.length - 1; i++) {
        final current = points[i];
        final next = points[i + 1];
        path.quadraticBezierTo(
          current.dx,
          current.dy,
          (current.dx + next.dx) / 2,
          (current.dy + next.dy) / 2,
        );
      }

      Paint paint = Paint()
        ..color = sketch.color
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4.0;

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant SketchPainter oldDelegate) {
    return oldDelegate.sketches != sketches;
  }
}
