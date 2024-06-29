import 'package:flutter/material.dart';
import 'package:triply/core/theme/colors.dart';

ThemeData lightTheme() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: 'Quicksand',
      textTheme: const TextTheme(
        headlineSmall: TextStyle(fontWeight: FontWeight.w400),
      ),
      scaffoldBackgroundColor: ThemeColors.lightBackground,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: ThemeColors.baseGreen,
        onPrimary: ,
        secondary: secondary,
        onSecondary: onSecondary,
        error: error,
        onError: onError,
        surface: surface,
        onSurface: onSurface,
      ),
    );
ThemeData darkTheme() => ThemeData();
