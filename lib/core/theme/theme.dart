import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triply/core/theme/colors.dart';

ThemeData lightTheme() => ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.quicksandTextTheme(),
      brightness: Brightness.light,
      scaffoldBackgroundColor: ThemeColors.lightBackground,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ThemeColors.baseGreen,
        onPrimary: ThemeColors.onBaseGreen,
        secondary: ThemeColors.lightGrey,
        onSecondary: ThemeColors.baseGreen,
        error: ThemeColors.errorBackground,
        onError: ThemeColors.errorText,
        surface: ThemeColors.lightBackground,
        onSurface: ThemeColors.infoFontColor,
      ),
    );

//TODO darkTheme colors
ThemeData darkTheme() => ThemeData(
      useMaterial3: true,
      textTheme: GoogleFonts.quicksandTextTheme(),
      brightness: Brightness.light,
      scaffoldBackgroundColor: ThemeColors.lightBackground,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ThemeColors.baseGreen,
        onPrimary: ThemeColors.onBaseGreen,
        secondary: ThemeColors.lightGrey,
        onSecondary: ThemeColors.baseGreen,
        error: ThemeColors.errorBackground,
        onError: ThemeColors.errorText,
        surface: ThemeColors.lightBackground,
        onSurface: ThemeColors.infoFontColor,
      ),
    );
