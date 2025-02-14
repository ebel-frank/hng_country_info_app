import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData getLightTheme() {
    return ThemeData(
        fontFamily: 'Axiforma',
        useMaterial3: true,
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 0, foregroundColor: Colors.white),
        brightness: Brightness.light,
        hintColor: Color(0xFF667085),
        cardColor: Color(0xFFF2F4F7),
        textTheme: TextTheme(
          displaySmall: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              height: 1.3),
          titleSmall: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              height: 1.2),
          bodyMedium: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              height: 1.2),
          bodySmall: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              height: 1.2),
        ));
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
        fontFamily: 'Axiforma',
        useMaterial3: true,
        brightness: Brightness.dark,
        hintColor: Color(0xFFEAECF0),
        cardColor: Color(0xFF98A2B3).withOpacity(0.2),
        textTheme: TextTheme(
          displaySmall: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              height: 1.3),
          titleSmall: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              height: 1.2),
          bodyMedium: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              height: 1.2),
          bodySmall: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              height: 1.2),
        ));
  }
}