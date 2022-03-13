import 'package:flutter/material.dart';

class AppThemeData {
  ThemeData get materialTheme {
    return ThemeData(
      scaffoldBackgroundColor: Color(0xFF023047),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF023047),
        primary: Color(0xFFff9e00),
        secondary: Color(0xFF219ebc),
      ),
    );
  }
}
