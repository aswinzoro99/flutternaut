import 'package:flutter/material.dart';

import '../common/dimensions.dart';
import 'light_theme_colors.dart';

const String kFontFamily = 'Open sans';
const double kLetterSpacing = 0.3;

final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    background: backgroundColor,
  ),
  hoverColor: hoverColor,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: primaryTextColor,
      fontSize: displayLarge,
      letterSpacing: kLetterSpacing,
    ),
    displayMedium: TextStyle(
      color: primaryTextColor,
      fontSize: displayMedium,
      letterSpacing: kLetterSpacing,
    ),
    displaySmall: TextStyle(
      color: primaryTextColor,
      fontSize: displaySmall,
      letterSpacing: kLetterSpacing,
    ),
    headlineLarge: TextStyle(
      color: primaryTextColor,
      fontSize: headlineLarge,
      letterSpacing: kLetterSpacing,
    ),
    headlineMedium: TextStyle(
      color: primaryTextColor,
      fontSize: headlineMedium,
      letterSpacing: kLetterSpacing,
    ),
    headlineSmall: TextStyle(
      color: primaryTextColor,
      fontSize: headlineSmall,
      letterSpacing: kLetterSpacing,
    ),
    titleLarge: TextStyle(
      color: primaryTextColor,
      fontSize: titleLarge,
      letterSpacing: kLetterSpacing,
    ),
    titleMedium: TextStyle(
      color: primaryTextColor,
      fontSize: titleMedium,
      letterSpacing: kLetterSpacing,
    ),
    titleSmall: TextStyle(
      color: primaryTextColor,
      fontSize: titleSmall,
      letterSpacing: kLetterSpacing,
    ),
    bodyLarge: TextStyle(
      color: primaryTextColor,
      fontSize: bodyLarge,
      letterSpacing: kLetterSpacing,
    ),
    bodyMedium: TextStyle(
      color: secondaryTextColor,
      fontSize: bodyMedium,
      letterSpacing: kLetterSpacing,
    ),
    bodySmall: TextStyle(
      color: primaryTextColor,
      fontSize: bodySmall,
      letterSpacing: kLetterSpacing,
    ),
    labelLarge: TextStyle(
      color: primaryTextColor,
      fontSize: labelLarge,
      letterSpacing: kLetterSpacing,
    ),
    labelMedium: TextStyle(
      color: primaryTextColor,
      fontSize: labelMedium,
      letterSpacing: kLetterSpacing,
    ),
    labelSmall: TextStyle(
      color: secondaryColor,
      fontSize: labelSmall,
      letterSpacing: kLetterSpacing,
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: secondaryColor,
    elevation: 0,
    labelTextStyle: WidgetStateProperty.all(
      TextStyle(
        color: primaryTextColor,
        fontSize: bodyMedium,
        letterSpacing: kLetterSpacing,
      ),
    ),
  ),
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: secondaryColor,
    groupAlignment: dp10,
    selectedLabelTextStyle: TextStyle(
      fontSize: dp13,
      color: secondaryTextColor,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelTextStyle: TextStyle(
      fontSize: dp13,
      color: secondaryTextColor,
      fontWeight: FontWeight.w400,
    ),
  ),
);
