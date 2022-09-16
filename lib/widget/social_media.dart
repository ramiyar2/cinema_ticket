import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/icons.dart';

Row socialMedia() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 20,
          backgroundColor: darkBlue,
          child: Image.asset(
            facebook,
            width: 25,
            height: 25,
            color: white,
          ),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 20,
          backgroundColor: darkBlue,
          child: Image.asset(
            twitter,
            width: 25,
            height: 25,
            color: white,
          ),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 20,
          backgroundColor: darkBlue,
          child: Image.asset(
            google,
            width: 25,
            height: 25,
            color: white,
          ),
        ),
      ),
    ],
  );
}
