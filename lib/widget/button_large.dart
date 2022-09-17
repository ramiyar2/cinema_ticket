import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/icons.dart';
import '../theme/theme.dart';

ElevatedButton largeButton({required btnText, required Function()? function}) {
  return ElevatedButton(
    onPressed: function,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(blue),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                btnText,
                style: Themes().headingStyle,
              ),
            ),
          ),
          Image.asset(
            arrow,
            width: 25,
            height: 30,
            color: white,
          )
        ],
      ),
    ),
  );
}
