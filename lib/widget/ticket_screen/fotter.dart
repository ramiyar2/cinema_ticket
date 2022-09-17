import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import '../../theme/theme.dart';

Widget fotter() {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        color: blue,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name',
                style: Themes().subTitleStyleOP,
              ),
              Text(
                'Ram',
                style: Themes().largeText,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Price',
                style: Themes().subTitleStyleOP,
              ),
              Text(
                '40,000',
                style: Themes().largeText,
              ),
            ],
          ),
          Image.asset(qrCode)
        ],
      ),
    ),
  );
}
