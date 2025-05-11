// lib/core/themes.dart

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue[600], // Blue-600
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Roboto',  // You can add your custom font here if needed

      // Updated TextTheme for Flutter 2.0 and later
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.blue[600]),
        displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black87),
        bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black54),
      ),

      // Button style: updated from the deprecated `primary` to `backgroundColor` and `onPrimary` to `foregroundColor`
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[600], // Replaced 'primary' with 'backgroundColor'
          foregroundColor: Colors.white,      // Replaced 'onPrimary' with 'foregroundColor'
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),

      // You can use `ButtonStyle` for other buttons as well, like `TextButton` or `OutlinedButton`
    );
  }
}
