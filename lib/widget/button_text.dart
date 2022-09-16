import 'package:flutter/material.dart';

import '../theme/theme.dart';

TextButton buttonText({required btnString, required function}) {
  return TextButton(
      onPressed: function,
      child: Text(
        btnString,
        style: Themes().subTitleStyleSmallActive,
      ));
}
