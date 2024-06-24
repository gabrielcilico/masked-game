import 'package:flutter/material.dart';

import 'color_helpers.dart';

class Palette {
  static const Color primary = Color(0xFF402E7A);
  static const Color secondary = Color(0xFF3DC2EC);
  static const Color tertiary = Color(0xFF4C3BCF);
  static const Color highlight = Color(0xFF4B70F5);
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static const Color background = Color(0xFF696767);

  static const Color iconColor = Color(0xFF1D1B20);
  static const Color textColor = Color(0xFFF5F5F5);

  static const Color gray = Color(0xFFB5B5C3);
  static const Color attention = Colors.yellow;
  static const Color error = Color(0xFFE53E3E);
  static const Color success = Color(0xFF059212);

  static MaterialColor materialPrimary =
      generateMaterialColor(const Color(0xFF032541));
  static MaterialColor materialSecondary =
      generateMaterialColor(const Color(0xFF1CB8D8));
  static MaterialColor materialAccent =
      generateMaterialColor(const Color(0xFF1CB8D8));

  static const Color labelColor = Color(0xFF1D1B20);
  static const Color iconInputColor = Color(0xFF1D1B20);
  static const Color inputTextColor = Color(0xFF1D1B20);
  static const Color inputBorderColor = Color(0xFFE3E3E3);
  static const Color inputBackground = Colors.white;
  static const Color filePickerBackground = Color(0xFFFAF9FB);

  // Players Colors
  static const Color player1 = Color(0xFF973131);
  static const Color player2 = Color(0xFFFFC700);
  static const Color player3 = Color(0xFF219C90);
  static const Color player4 = Color(0xFF5A639C);
  static const Color player5 = Color(0xFFC80036);
  static const Color player6 = Color(0xFF0C1844);
  static const Color player7 = Color(0xFFAF47D2);
  static const Color player8 = Color(0xFF6F4E37);

  // Buttons
  static const Color buttonStartBorder = Color(0xFF365E32);
  static const Color buttonStart1 = Color(0xFF06D001);
  static const Color buttonStart2 = Color(0xFF9BEC00);
}
