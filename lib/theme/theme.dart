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

  TextStyle get headingStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 24,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle get subHeadingStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 36,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle get importantInfo {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 48,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get titleStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 32,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get subTitleStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 20,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle get subTitleStyleOP {
    return TextStyle(
      color: Get.isDarkMode ? bgWhite : darkBlue,
      fontSize: 20,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle get bodyStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 14,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
    );
  }
}
