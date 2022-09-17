import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import '../../theme/theme.dart';

Widget tickect() {
  return Container(
    decoration: BoxDecoration(
      color: ticketWhiteOp,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
    margin: const EdgeInsets.only(
      left: 40,
      right: 40,
      top: 20,
      bottom: 0,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Movie  : Game of Thrones ',
          style: Themes().ticketBoday,
        ),
        ticketInfo(
          lName: 'Cinema',
          lData: 'Duhok Cinema',
          rName: 'Seat',
          rData: 'G1,G5',
          rIsNull: false,
        ),
        ticketInfo(
          lName: 'Order',
          lData: '0153546',
          rName: 'Row',
          rData: '6,7',
          rIsNull: false,
        ),
        ticketInfo(
          lName: 'Date',
          lData: '05/07/2022',
          rName: 'Time',
          rData: '10 : 30 PM',
          rIsNull: false,
        ),
        ticketInfo(
          lName: 'Price',
          lData: '40,000',
          rIsNull: true,
        ),
      ],
    ),
  );
}

Widget ticketInfo(
    {required String lName,
    required String lData,
    String? rName,
    String? rData,
    required bool rIsNull}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lName,
              style: Themes().ticketTitle,
            ),
            Text(
              lData,
              style: Themes().ticketBoday,
            ),
          ],
        ),
        rIsNull
            ? Container()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rName!,
                    style: Themes().ticketTitle,
                  ),
                  Text(
                    rData!,
                    style: Themes().ticketBoday,
                  ),
                ],
              ),
      ],
    ),
  );
}

Widget bartickect(context) {
  return Container(
    decoration: BoxDecoration(
      color: ticketWhiteOp,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: MediaQuery.of(context).size.width,
    child: Image.asset(barCode),
  );
}
