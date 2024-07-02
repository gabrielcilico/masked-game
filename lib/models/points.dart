class Points {
  final double x;
  final double y;

  Points({required this.x, required this.y});

  factory Points.fromJson(Map<String, dynamic> json) {
    return Points(
      x: json['x'],
      y: json['y'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'x': x,
      'y': y,
    };
  }

  Points copyWith({
    double? x,
    double? y,
  }) {
    return Points(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}
