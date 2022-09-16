import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomAppBars {
  static Row appBar1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage('http://placeimg.com/50/50/people'))),
                child: null,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Ram',
                  style: Themes().bodyStyle,
                ),
                Text(
                  'Book your favorite movie',
                  style: Themes().subTitleStyleOPSmall,
                ),
              ],
            ),
          ],
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                notification,
                color: white,
                scale: 2.5,
              ),
            ),
            CircleAvatar(
              radius: 4,
              backgroundColor: blue,
            ),
          ],
        ),
      ],
    );
  }
}
