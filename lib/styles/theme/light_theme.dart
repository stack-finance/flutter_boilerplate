part of 'themes.dart';

class _LightTheme {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    appBarTheme: AppBarTheme(color: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    focusColor: AppColors.inputActive,
    hoverColor: AppColors.inputDefault,
    disabledColor: AppColors.inputDisable,
    primaryColorLight: AppColors.inputDefault, colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.buttonColor,
      secondary: AppColors.scrollGlowColor,
    ).copyWith(error: AppColors.textError),
  );
}
