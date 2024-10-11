import 'package:flutter/material.dart';

class AppTheme {
  // Constante de diseno
  static const Color primaryColor = Color.fromRGBO(0, 99, 65, 1);
  static const Color accentColor = Color.fromRGBO(239, 185, 38, 1);
  static const Color greentColorOpacity = Color.fromRGBO(31, 192, 117, 0.4);
  static const Color greentColorTwoOpacity = Color.fromRGBO(0, 99, 65, 0.7);
  static const Color greentColorNoOpacity = Color.fromRGBO(31, 192, 117, 1);
  // Extendiendo la clase estatica ThemeData
  static ThemeData getThemeData() {
    return ThemeData(
      fontFamily: 'alcaldia_fonts',
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch:
            Colors.grey, // Use a default color for the primary swatch
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
        foregroundColor: Colors.black,
      ),
    );
  }

  // Logical pixel calculator
  static double realToLogicalPixels({
    required double realPixels,
    required double deviceRatio,
  }) {
    //print('El valor de la variable deviceRatio: ${deviceRatio}');
    return realPixels / deviceRatio;
  }
}
