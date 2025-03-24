import 'package:flutter/material.dart';

const primaryColor = Colors.red;
final themeData = ThemeData(
  dividerTheme: DividerThemeData(color: Colors.grey.shade400),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Color(0xffF2EFE7),
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  // textTheme: TextTheme(
  //   titleMedium: TextStyle(
  //     fontSize: 15,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.red,
  //   ),
  //   titleSmall: TextStyle(
  //     fontSize: 15,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.black,
  //   ),
  //   titleLarge: TextStyle(
  //     fontSize: 18,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.red,
  //   ),
  //   bodySmall: TextStyle(
  //     fontSize: 18,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.black,
  //   ),
  // ),
);
