import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF2962FF);
const kSecoundaryColor = Color(0x8A000000);
const kTextDarkColor = Color(0xFF000000);
const kTextLightColor = Color(0xFFFFFFFF);
const double kDefaultPadding = 21.0;

ThemeData customTheme() {
  return ThemeData(
    scaffoldBackgroundColor: kTextLightColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kTextLightColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
          color: kTextDarkColor, fontSize: 40, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
        fontWeight: FontWeight.normal,
        color: kSecoundaryColor,
        fontSize: 18,
      ),
      subtitle2: TextStyle(
        fontWeight: FontWeight.bold,
        color: kSecoundaryColor,
        fontSize: 18,
      ),
    ),
  );
}
