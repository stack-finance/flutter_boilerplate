part of 'themes.dart';

// ignore: unused_element
class _DarkTheme {
  // ignore: unused_field
  static ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
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
    appBarTheme: AppBarTheme(color: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    errorColor: AppColors.textError,
    focusColor: AppColors.inputActive,
    hoverColor: AppColors.inputDefault,
    disabledColor: AppColors.inputDisable,
    primaryColorLight: AppColors.inputDefault,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.buttonColor;
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.buttonColor;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.buttonColor;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return AppColors.buttonColor;
        }
        return null;
      }),
    ),
  );
}
