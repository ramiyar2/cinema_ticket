import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    backgroundColor: bgWhite,
    brightness: Brightness.light,
    scaffoldBackgroundColor: bgWhite,
  );

  static ThemeData darkTheme = ThemeData(
    backgroundColor: darkerBlue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkerBlue,
  );

  TextStyle get headingStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 24,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get subHeadingStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 36,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get importantInfo {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 48,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.bold,
      height: 1,
    );
  }

  TextStyle get titleStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 32,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w500,
      height: 1,
    );
  }

  TextStyle get subTitleStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 20,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get subTitleStyleSmall {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 12,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get subTitleStyleSmallActive {
    return TextStyle(
      color: blue,
      fontSize: 12,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get subTitleStyleOP {
    return TextStyle(
      color: Get.isDarkMode ? whiteOp : darkBlue,
      fontSize: 20,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get subTitleStyleOPSmall {
    return TextStyle(
      color: Get.isDarkMode ? whiteOp : darkBlue,
      fontSize: 12,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get bodyStyle {
    return TextStyle(
      color: Get.isDarkMode ? white : darkBlue,
      fontSize: 14,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get ticketTitle {
    return TextStyle(
      color: Get.isDarkMode ? blackOp : whiteOp,
      fontSize: 10,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }

  TextStyle get ticketBoday {
    return TextStyle(
      color: Get.isDarkMode ? black : white,
      fontSize: 15,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.normal,
      height: 1,
    );
  }
}
