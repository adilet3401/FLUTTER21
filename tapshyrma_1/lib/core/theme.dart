import 'package:flutter/material.dart';

class MyTheme {
  ThemeData myLightTheme = ThemeData(
    textTheme: const TextTheme(
        headlineMedium: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    )),
  );
  ThemeData myBodyBgcColor = ThemeData(
    scaffoldBackgroundColor: Colors.white,
  );
}
