part of 'themes.dart';

// ignore: unused_element
class _DarkTheme {
  // ignore: unused_field
  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Gilroy',
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.buttonColor,
      secondary: AppColors.buttonColor,
    ),
    toggleableActiveColor: AppColors.buttonColor,
    appBarTheme: AppBarTheme(color: AppColors.white),
    scaffoldBackgroundColor: AppColors.white,
    errorColor: AppColors.textError,
    focusColor: AppColors.inputActive,
    hoverColor: AppColors.inputDefault,
    disabledColor: AppColors.inputDisable,
    primaryColorLight: AppColors.inputDefault,
    backgroundColor: AppColors.white,
  );
}
