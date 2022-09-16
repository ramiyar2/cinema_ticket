import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ButtonText extends StatelessWidget {
  final String btnString;
  final Function() function;
  const ButtonText({Key? key, required this.btnString, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        child: Text(
          btnString,
          style: Themes().subTitleStyleSmallActive,
        ));
  }
}
