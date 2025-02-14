import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  static ThemeData getLightTheme() {
    return ThemeData(
        fontFamily: 'Axiforma',
        useMaterial3: true,
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            elevation: 0, foregroundColor: Colors.white),
        brightness: Brightness.light,
        // focusColor: Ui.parseColor(setting.value.accentColor),
        hintColor: Color(0xFF667085),
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(
        //       foregroundColor: Ui.parseColor(setting.value.mainColor)),
        // ),
        // colorScheme: ColorScheme.light(
        //   primary: Ui.parseColor(setting.value.mainColor),
        //   secondary: Ui.parseColor(setting.value.mainColor),
        // ),
        cardColor: Color(0xFFF2F4F7),
        textTheme: TextTheme(
          // titleLarge: TextStyle(
          //     fontSize: 15.0,
          //     fontWeight: FontWeight.w700,
          //     height: 1.3),
          // headlineSmall: TextStyle(
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.w700,
          //     height: 1.3),
          // headlineMedium: TextStyle(
          //     fontSize: 18.0,
          //     fontWeight: FontWeight.w400,
          //     height: 1.3),
          displaySmall: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              height: 1.3),
          // displayMedium: TextStyle(
          //     fontSize: 22.0,
          //     fontWeight: FontWeight.w700,
          //     height: 1.4),
          // displayLarge: TextStyle(
          //     fontSize: 24.0,
          //     fontWeight: FontWeight.w300,
          //     height: 1.4),
          titleSmall: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              height: 1.2),
          // titleMedium: TextStyle(
          //     fontSize: 13.0,
          //     fontWeight: FontWeight.w400,
          //     height: 1.2),
          bodyMedium: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              height: 1.2),
          // bodyLarge: TextStyle(
          //     fontSize: 12.0,
          //     fontWeight: FontWeight.w400,
          //     height: 1.2),
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
        // primaryColor: Colors.white,
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //     elevation: 0, foregroundColor: Colors.white),
        brightness: Brightness.dark,
        // focusColor: Ui.parseColor(setting.value.accentColor),
        hintColor: Color(0xFFEAECF0),
        // textButtonTheme: TextButtonThemeData(
        //   style: TextButton.styleFrom(
        //       foregroundColor: Ui.parseColor(setting.value.mainColor)),
        // ),
        // colorScheme: ColorScheme.light(
        //   primary: Ui.parseColor(setting.value.mainColor),
        //   secondary: Ui.parseColor(setting.value.mainColor),
        // ),
        cardColor: Color(0xFF98A2B3).withOpacity(0.2),
        textTheme: TextTheme(
          // titleLarge: TextStyle(
          //     fontSize: 15.0,
          //     fontWeight: FontWeight.w700,
          //     height: 1.3),
          // headlineSmall: TextStyle(
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.w700,
          //     height: 1.3),
          // headlineMedium: TextStyle(
          //     fontSize: 18.0,
          //     fontWeight: FontWeight.w400,
          //     height: 1.3),
          displaySmall: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              height: 1.3),
          // displayMedium: TextStyle(
          //     fontSize: 22.0,
          //     fontWeight: FontWeight.w700,
          //     height: 1.4),
          // displayLarge: TextStyle(
          //     fontSize: 24.0,
          //     fontWeight: FontWeight.w300,
          //     height: 1.4),
          titleSmall: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              height: 1.2),
          // titleMedium: TextStyle(
          //     fontSize: 13.0,
          //     fontWeight: FontWeight.w400,
          //     height: 1.2),
          bodyMedium: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              height: 1.2),
          // bodyLarge: TextStyle(
          //     fontSize: 12.0,
          //     fontWeight: FontWeight.w400,
          //     height: 1.2),
          bodySmall: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
              height: 1.2),
        ));
  }

  // ThemeData getDarkTheme() {
  //   // TODO change font dynamically
  //   return ThemeData(
  //       primaryColor: Color(0xFF252525),
  //       floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 0),
  //       scaffoldBackgroundColor: Color(0xFF2C2C2C),
  //       brightness: Brightness.dark,
  //       dividerColor:
  //       Ui.parseColor(setting.value.accentDarkColor, opacity: 0.1),
  //       focusColor: Ui.parseColor(setting.value.accentDarkColor),
  //       hintColor: Ui.parseColor(setting.value.secondDarkColor),
  //       textButtonTheme: TextButtonThemeData(
  //         style: TextButton.styleFrom(
  //             foregroundColor: Ui.parseColor(setting.value.mainColor)),
  //       ),
  //       colorScheme: ColorScheme.dark(
  //         primary: Ui.parseColor(setting.value.mainDarkColor),
  //         secondary: Ui.parseColor(setting.value.mainDarkColor),
  //       ),
  //       textTheme: GoogleFonts.getTextTheme(
  //           _getLocale().startsWith('ar') ? 'Cairo' : 'Poppins',
  //           TextTheme(
  //             titleLarge: TextStyle(
  //                 fontSize: 15.0,
  //                 fontWeight: FontWeight.w700,
  //                 color: Ui.parseColor(setting.value.mainDarkColor),
  //                 height: 1.3),
  //             headlineSmall: TextStyle(
  //                 fontSize: 16.0,
  //                 fontWeight: FontWeight.w700,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.3),
  //             headlineMedium: TextStyle(
  //                 fontSize: 18.0,
  //                 fontWeight: FontWeight.w400,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.3),
  //             displaySmall: TextStyle(
  //                 fontSize: 20.0,
  //                 fontWeight: FontWeight.w700,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.3),
  //             displayMedium: TextStyle(
  //                 fontSize: 22.0,
  //                 fontWeight: FontWeight.w700,
  //                 color: Ui.parseColor(setting.value.mainDarkColor),
  //                 height: 1.4),
  //             displayLarge: TextStyle(
  //                 fontSize: 24.0,
  //                 fontWeight: FontWeight.w300,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.4),
  //             titleSmall: TextStyle(
  //                 fontSize: 15.0,
  //                 fontWeight: FontWeight.w600,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.2),
  //             titleMedium: TextStyle(
  //                 fontSize: 13.0,
  //                 fontWeight: FontWeight.w400,
  //                 color: Ui.parseColor(setting.value.mainDarkColor),
  //                 height: 1.2),
  //             bodyMedium: TextStyle(
  //                 fontSize: 13.0,
  //                 fontWeight: FontWeight.w600,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.2),
  //             bodyLarge: TextStyle(
  //                 fontSize: 12.0,
  //                 fontWeight: FontWeight.w400,
  //                 color: Ui.parseColor(setting.value.secondDarkColor),
  //                 height: 1.2),
  //             bodySmall: TextStyle(
  //                 fontSize: 12.0,
  //                 fontWeight: FontWeight.w300,
  //                 color: Ui.parseColor(setting.value.accentDarkColor),
  //                 height: 1.2),
  //           )),
  //       checkboxTheme: CheckboxThemeData(
  //         fillColor: WidgetStateProperty.resolveWith<Color?>(
  //                 (Set<WidgetState> states) {
  //               if (states.contains(WidgetState.disabled)) {
  //                 return null;
  //               }
  //               if (states.contains(WidgetState.selected)) {
  //                 return Ui.parseColor(setting.value.mainDarkColor);
  //               }
  //               return null;
  //             }),
  //       ),
  //       radioTheme: RadioThemeData(
  //         fillColor: WidgetStateProperty.resolveWith<Color?>(
  //                 (Set<WidgetState> states) {
  //               if (states.contains(WidgetState.disabled)) {
  //                 return null;
  //               }
  //               if (states.contains(WidgetState.selected)) {
  //                 return Ui.parseColor(setting.value.mainDarkColor);
  //               }
  //               return null;
  //             }),
  //       ),
  //       switchTheme: SwitchThemeData(
  //         thumbColor: WidgetStateProperty.resolveWith<Color?>(
  //                 (Set<WidgetState> states) {
  //               if (states.contains(WidgetState.disabled)) {
  //                 return null;
  //               }
  //               if (states.contains(WidgetState.selected)) {
  //                 return Ui.parseColor(setting.value.mainDarkColor);
  //               }
  //               return null;
  //             }),
  //         trackColor: WidgetStateProperty.resolveWith<Color?>(
  //                 (Set<WidgetState> states) {
  //               if (states.contains(WidgetState.disabled)) {
  //                 return null;
  //               }
  //               if (states.contains(WidgetState.selected)) {
  //                 return Ui.parseColor(setting.value.mainDarkColor);
  //               }
  //               return null;
  //             }),
  //       ));
  // }
}