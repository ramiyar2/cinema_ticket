import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/theme.dart';

Widget dateSelection() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        date(false, 'Sun', '5/7'),
        date(false, 'Sun', '5/7'),
        date(true, 'Sun', '5/7'),
        date(false, 'Sun', '5/7'),
        date(false, 'Sun', '5/7'),
      ],
    ),
  );
}

Container date(bool isSelected, String d, String dm) {
  return Container(
      width: 40,
      height: 60,
      decoration: BoxDecoration(
        color: isSelected ? blue : null,
        borderRadius: BorderRadius.circular(10),
        border: isSelected
            ? null
            : Border.all(
                color: blue,
              ),
        boxShadow: isSelected
            ? [BoxShadow(color: blue, blurRadius: 10, spreadRadius: 1)]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            d,
            style: Themes().bodyStyle,
          ),
          Text(
            dm,
            style: Themes().ticketTitleWhite,
          ),
        ],
      ));
}
