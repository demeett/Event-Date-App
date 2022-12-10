import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._();
    return _instance!;
  }

  ThemeData themeData = ThemeData(
    primaryColor: const Color.fromARGB(255, 227, 185, 88),
  );
}
