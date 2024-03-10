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
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(
        primaryLightColor,
      ),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
    textStyle: MaterialStatePropertyAll(
      TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: MaterialStatePropertyAll(primaryLightColor),
  )),
  outlinedButtonTheme: const OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(primaryLightColor),
    ),
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(primaryLightColor),
    ),
  ),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: primaryLightColor),
);

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primaryDarkColor,
  ).copyWith(
    secondary: secondaryColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: primaryDarkColor,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primaryDarkColor,
  ),
  textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      primaryDarkColor,
    ),
  )),
  outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      primaryDarkColor,
    ),
  )),
  elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(
      primaryDarkColor,
    ),
  )),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primaryDarkColor,
  ),
);
