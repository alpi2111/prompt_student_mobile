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
  );
}

ThemeData themeDark() {
  return ThemeData(
    fontFamily: _fontFamily,
    primaryColor: primaryColorDark,
    accentColor: secondaryColorDark,
    scaffoldBackgroundColor: Colors.grey.shade900
  );
}
