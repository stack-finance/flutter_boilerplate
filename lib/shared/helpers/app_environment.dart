import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

enum AppTheme { SYSTEM, DARK, LIGHT }

class AppEnvironment {
  AppEnvironment._();

  static final brightness = SchedulerBinding.instance?.window.platformBrightness;
  static final appTheme = ValueNotifier(AppTheme.SYSTEM);
  static bool get isDark => appTheme.value == AppTheme.SYSTEM
      ? brightness == Brightness.dark
      : appTheme.value == AppTheme.DARK;

  static String getApiURL() {
    return '';
  }
}
