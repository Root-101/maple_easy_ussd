import 'package:easy_ussd/src/app/theme/theme_exporter.dart';
import 'package:flutter/material.dart';

/// Custom [ThemeData] for the app.
class CustomTheme {
  /// The custom light theme for the app.
  static ThemeData lightThemeData = ThemeData(
    fontFamily: 'Archivo',
    primaryColor: ColorsTheme.primary,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white.withOpacity(1),
      modalBackgroundColor: Colors.white.withOpacity(1),
    ),
    // The theme for all the types of text in the app.
    textTheme: TextsTheme.textTheme,
    indicatorColor: ColorsTheme.primary,
    // Define the default brightness and colors.
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: ColorsTheme.primary,
      secondary: ColorsTheme.primaryDark,
      background: ColorsTheme.background,
    ),
  );

  /// The custom dark theme for the app.
  static ThemeData darkThemeData = ThemeData(
    fontFamily: 'Archivo',
    primaryColor: ColorsTheme.primary,
    // The theme for all the types of text in the app.
    textTheme: TextsTheme.textTheme,
    indicatorColor: ColorsTheme.primary,
    // Define the default brightness and colors.
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorsTheme.primary,
      secondary: ColorsTheme.primaryDark,
    ),
  );
}
