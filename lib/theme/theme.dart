import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    backgroundColor: bgWhite,
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = ThemeData(
    backgroundColor: darkerBlue,
    brightness: Brightness.dark,
  );
  TextStyle get headline {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 24, //36,48bold
    );
  }
}
