import 'package:flutter/material.dart';

class ClickDarkThemeMode {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Colors.grey,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
