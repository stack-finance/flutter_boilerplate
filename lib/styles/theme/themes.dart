import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/shared/helpers/app_environment.dart';
import 'package:flutter_boilerplate/styles/app_colors.dart';

part 'dark_theme.dart';
part 'light_theme.dart';

ThemeData get themeData => AppEnvironment.isDark
    ? _LightTheme.lightThemeData
    // TODO:change when implementing dark mode
    // ? _DarkTheme.darkThemeData
    : _LightTheme.lightThemeData;
