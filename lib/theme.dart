import 'package:flutter/material.dart';
import 'package:vcr/colorscheme.dart';
import 'package:vcr/texttheme.dart';

ThemeData themeData = ThemeData(
  colorScheme: colorScheme,
  textTheme: textTheme.apply(
    bodyColor: colorScheme.primary,
    displayColor: colorScheme.primaryVariant.withOpacity(0.8),
  ),
  appBarTheme: AppBarTheme(
    textTheme: textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),

    color: colorScheme.primaryVariant.withOpacity(0.8),
    iconTheme: IconThemeData(color: Colors.white),
    //brightness: colorScheme.brightness,
  ),
  iconTheme: IconThemeData(color: colorScheme.primaryVariant.withOpacity(0.8)),
  canvasColor: colorScheme.background.withOpacity(0.9),
  primaryColor: colorScheme.primaryVariant,
  accentColor: colorScheme.onPrimary,
  brightness: colorScheme.brightness,
  bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey.shade300),
  dividerColor: colorScheme.onSurface,
  buttonColor: colorScheme.onPrimary,
  cardColor: Colors.white,
  scaffoldBackgroundColor: colorScheme.background.withOpacity(0.2),
  highlightColor: Colors.transparent,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    elevation: 24.0,
    backgroundColor: Colors.deepPurple.shade50.withOpacity(0.5),
    foregroundColor: colorScheme.primaryVariant.withOpacity(0.8),
  ),
  cursorColor: colorScheme.primaryVariant.withOpacity(0.8),
    backgroundColor: colorScheme.background.withOpacity(0.7)

);
