import 'package:flutter/material.dart';

class Challenge {
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Challenge.color('1B3149'),
        accentColor: Challenge.color('5BDB98'),
        inputDecorationTheme:
            InputDecorationTheme(border: OutlineInputBorder()));
  }

  static Color color(String code) {
    String finalColor = '0xFF' + code;
    return Color(int.parse(finalColor));
  }
}
