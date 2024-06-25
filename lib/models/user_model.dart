import 'dart:ui';

class UserModel {
  String id;
  String name;
  Color color;
  bool isLeader;

  UserModel({
    required this.id,
    required this.name,
    required this.color,
    this.isLeader = false,
  });

  UserModel copyWith({
    String? id,
    String? name,
    Color? color,
    bool? isLeader,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      isLeader: isLeader ?? this.isLeader,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'color': color.value,
      'isLeader': isLeader,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      color: Color(map['color']),
      isLeader: map['isLeader'],
    );
  }
}
