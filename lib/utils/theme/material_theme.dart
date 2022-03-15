import 'package:flutter/material.dart';

const kDarkViolet = Color(0xFF240046);
const kMediumViolet = Color(0xFF5a189a);
const kLightViolet = Color(0xFF9d4edd);
const kGreen = Color(0xFF18af9d);
const kDarkOrange = Color(0xFFff6d00);
const kMediumOrange = Color(0xFFff8500);
const kLightOrange = Color(0xFFff9e00);

class AppThemeData {
  ThemeData get materialTheme {
    return ThemeData(
      dividerColor: Colors.grey,
      fontFamily: "Cabin",
      listTileTheme: ListTileThemeData(
        iconColor: Colors.white70,
        // textColor: Colors.white,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Color(0xFF5a189a),
      ),
      scaffoldBackgroundColor: Color(0xFF240046),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFF023047),
        primary: Color(0xFFff9e00),
        secondary: Color(0xFF18af9d),
      ),
      textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        subtitle1: TextStyle(color: Colors.white),
        subtitle2: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headlineLarge: TextStyle(color: Colors.white),
      ),
    );
  }
}
