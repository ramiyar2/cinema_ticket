import 'dart:math';

import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import '../../theme/theme.dart';

Widget seatFotter() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      color: blue,
    ),
    child: Column(
      children: [
        cinemaLocation(),
        infos(),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            children: [
              price(),
              pay(),
            ],
          ),
        )
      ],
    ),
  );
}

Container pay() {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: darkBlue,
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20)),
    ),
    alignment: Alignment.bottomRight,
    child: Row(
      children: [
        const Text('Buy'),
        const SizedBox(
          width: 20,
        ),
        Transform.rotate(
          angle: pi / 2,
          child: Image.asset(
            arrowUp,
            width: 30,
            height: 30,
            color: white,
          ),
        ),
      ],
    ),
  );
}

Expanded price() {
  return Expanded(
    child: Row(
      children: [
        Image.asset(
          dollar,
          width: 30,
          height: 30,
          color: white,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '4 * 10,000',
              style: Themes().ticketTitleWhiteOp,
            ),
            Text(
              '40,000',
              style: Themes().cinemaBtn,
            )
          ],
        ),
      ],
    ),
  );
}

Padding infos() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        info(false, 'Wed', '5/7'),
        info(false, '10', '30'),
        info(true, '1,2', '3,4'),
        info(false, '6', 'row'),
      ],
    ),
  );
}

Padding cinemaLocation() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Image.asset(
          location,
          width: 30,
          height: 30,
          color: white,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Duhok',
              style: Themes().cinemaBtn,
            ),
            Text(
              'Duhok , masike',
              style: Themes().ticketTitleWhiteOp,
            )
          ],
        ),
      ],
    ),
  );
}

Container info(bool isSelected, String d, String dm) {
  return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        color: isSelected ? darkBlue : blue,
        borderRadius: BorderRadius.circular(10),
        border: isSelected
            ? null
            : Border.all(
                color: darkBlue,
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
          const SizedBox(
            height: 4,
          ),
          Text(
            dm,
            style: Themes().ticketTitleWhiteOp,
          ),
        ],
      ));
}
