import 'package:flutter/material.dart';

class ClickLightThemeMode {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
