import 'package:flutter/material.dart';

class SketchModel {
  final List<Offset> points;
  final Color color;
  final String autorId;

  SketchModel(
      {required this.points, required this.color, required this.autorId});

  SketchModel copyWith({
    List<Offset>? points,
    Color? color,
    String? autorId,
  }) {
    return SketchModel(
      points: points ?? this.points,
      color: color ?? this.color,
      autorId: autorId ?? this.autorId,
    );
  }
}
