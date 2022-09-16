import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/icons.dart';
import '../theme/theme.dart';

Row logoSmall() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        Get.isDarkMode ? logoLight : logoDark,
        width: 100,
        height: 100,
      ),
      Text(
        'Cinema Ticket',
        style: Themes().headingStyle,
      )
    ],
  );
}
