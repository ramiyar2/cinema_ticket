import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/icons.dart';
import '../theme/theme.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
                  'Log in',
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
}
