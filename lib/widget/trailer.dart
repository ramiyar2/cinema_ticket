import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/icons.dart';
import '../theme/theme.dart';
import 'custom_app_bar.dart';

Container trailer() {
  return Container(
    margin: const EdgeInsets.only(top: 0, bottom: 20),
    height: 230,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      color: blue,
      image: const DecorationImage(
        image: NetworkImage('http://placeimg.com/348/200/people'),
        fit: BoxFit.cover,
        opacity: 0.5,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25),
            alignment: Alignment.topRight,
            child: CustomAppBars.appBar3(),
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              play,
              width: 30,
              height: 25,
              color: white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: darkerBlue, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  '05:50',
                  style: Themes().ticketTitleWhite,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    star,
                    width: 30,
                    height: 25,
                    color: white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '9.2/10',
                        style: Themes().bodyStyle,
                      ),
                      Text(
                        '20 M',
                        style: Themes().ticketTitleWhite,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
