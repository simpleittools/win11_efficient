import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff0984e3),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xff0984e3),
    onPrimary: Color(0xffdfe6e9),
    primaryContainer: Color(0xff55efc4),
    secondary: Color(0xffffeaa7),
    onSecondary: Color(0xff636e72),
    secondaryContainer: Color(0xffff7675),
    tertiary: Color(0xff443dff),
    onTertiary: Colors.white,
    // tertiaryContainer: ,
    surface: Color(0xffeaeafb),
    onSurface: Color(0xff050316),
    error: Color(0xffff7675),
    onError: Color(0xffdfe6e9),
    errorContainer: Color(0xffff7675),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff636e72),
    titleTextStyle: TextStyle(color: Color(0xffdfe6e9), fontSize: 20),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff0984e3),
    onPrimary: Color(0xff050316),
    primaryContainer: Color(0xff00b894),
    secondary: Color(0xffd63031),
    onSecondary: Color(0xffdfe6e9),
    tertiary: Color(0xff0984e3),
    onTertiary: Colors.white,
    /*
    By default surface applies to
    ElevatedButton,

    */
    surface: Color(0xff636e72),
    onSurface: Colors.white,
    error: Color(0xffd63031),
    onError: Color(0xffdfe6e9),
    errorContainer: Color(0xffd63031),
  ),
);
