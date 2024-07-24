import 'package:flutter/material.dart';

import '../common/dimensions.dart';
import 'light_theme_colors.dart';

const String kFontFamily = 'Poppins';
const double kLetterSpacing = 0.3;

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: kFontFamily,
  colorScheme: const ColorScheme.light(
    surface: backgroundColor,
    primary: secondaryColor,
  ),
  hoverColor: secondaryColor,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: displayLarge,
      letterSpacing: kLetterSpacing,
    ),
    displayMedium: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: displayMedium,
      letterSpacing: kLetterSpacing,
    ),
    displaySmall: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: displaySmall,
      fontWeight: FontWeight.bold,
      letterSpacing: kLetterSpacing,
    ),
    headlineLarge: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: headlineLarge,
      letterSpacing: kLetterSpacing,
    ),
    headlineMedium: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: headlineMedium,
      letterSpacing: kLetterSpacing,
    ),
    headlineSmall: TextStyle(
      fontFamily: kFontFamily,
      color: secondaryTextColor,
      fontSize: headlineSmall,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: kLetterSpacing,
    ),
    titleLarge: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: titleLarge,
      letterSpacing: kLetterSpacing,
    ),
    titleMedium: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: titleMedium,
      letterSpacing: kLetterSpacing,
    ),
    titleSmall: TextStyle(
      fontFamily: kFontFamily,
      color: secondaryTextColor,
      fontSize: titleSmall,
      letterSpacing: kLetterSpacing,
    ),
    bodyLarge: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: bodyLarge,
      letterSpacing: kLetterSpacing,
    ),
    bodyMedium: TextStyle(
      fontFamily: kFontFamily,
      color: secondaryTextColor,
      fontSize: bodyMedium,
      letterSpacing: kLetterSpacing,
    ),
    bodySmall: TextStyle(
      fontFamily: kFontFamily,
      color: primaryTextColor,
      fontSize: bodySmall,
      letterSpacing: kLetterSpacing,
    ),
    labelLarge: TextStyle(
      fontFamily: kFontFamily,
      color: secondaryTextColor,
      fontSize: labelLarge,
      fontWeight: FontWeight.bold,
      letterSpacing: kLetterSpacing,
    ),
    labelMedium: TextStyle(
      fontFamily: kFontFamily,
      color: secondaryTextColor,
      fontSize: labelMedium,
      letterSpacing: kLetterSpacing,
    ),
    labelSmall: TextStyle(
      fontFamily: kFontFamily,
      color: secondaryTextColor,
      fontSize: labelSmall,
      letterSpacing: kLetterSpacing,
    ),
  ),
);
