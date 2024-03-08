import 'package:flutter/material.dart';

const Color primaryLightColor = Colors.lightBlue;
const Color secondaryColor = Colors.blueAccent;
const MaterialColor primaryDarkColor = Colors.blueGrey;

ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: primaryLightColor),
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: primaryLightColor,
    ));

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primaryDarkColor,
  ).copyWith(
    secondary: secondaryColor,
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: primaryDarkColor,
  ),
  useMaterial3: true,
);
