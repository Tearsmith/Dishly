import 'package:dishly/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.backgroundColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: color),
        borderRadius: BorderRadius.circular(10),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),

      enabledBorder: _border(),

      focusedBorder: _border(AppPallete.borderColor),
    ),
  );
}
