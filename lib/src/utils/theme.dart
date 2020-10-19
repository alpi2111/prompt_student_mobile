import 'package:flutter/material.dart';
import 'package:prompt_student_mobile/src/utils/colors.dart';

final _fontFamily = "Raleway";

ThemeData themeLight() {
  /*TextTheme _textTheme(TextTheme base) {
    return base.copyWith(
    );
  }*/
  return ThemeData(
    fontFamily: _fontFamily,
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    //scaffoldBackgroundColor: purpleLight,
    //textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
    appBarTheme: AppBarTheme(
      brightness: ThemeData.estimateBrightnessForColor(primaryColor),
      elevation: 0.0,
    ),
  );
}

ThemeData themeDark() {
  return ThemeData(
    fontFamily: _fontFamily,
    primaryColor: primaryColorDark,
    accentColor: secondaryColorDark,
    scaffoldBackgroundColor: backgroundColorDark,
    textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
    //brightness: ThemeData.estimateBrightnessForColor(backgroundColorDark),
    appBarTheme: AppBarTheme(
      brightness: ThemeData.estimateBrightnessForColor(primaryColorDark),
      elevation: 0.0,
    ),
  );
}
