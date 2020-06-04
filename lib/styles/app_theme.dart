import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //const values
  // static const Color _lightprimarycolur = Colors.white;

  static final ThemeData lighttheme = ThemeData(
    primarySwatch: Colors.blue,
  );

  static final ThemeData darktheme = ThemeData(
    brightness: Brightness.dark,
  );
}
