import 'package:flutter/material.dart';

class ThemeCore {
  // Constantes de diseno
  static const Color primaryColor = Color.fromRGBO(0, 99, 65, 1);
  static const Color accentColor = Color.fromRGBO(239, 185, 38, 1);
  static const double desingConstant = 1512;
  //
  static ThemeData getThemeCore() {
    return ThemeData(
      fontFamily: 'AlcaldiaFont',
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch:
            Colors.green, // Use a default color for the primary swatch
        accentColor: accentColor,
        backgroundColor: primaryColor,
        brightness: Brightness.light,
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      )),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: primaryColor,
      ),
    );
  }
}
