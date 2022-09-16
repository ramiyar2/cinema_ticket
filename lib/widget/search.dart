import 'package:cinema_ticket/theme/icons.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/theme.dart';

Container searchBox() {
  return Container(
    height: 50,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  search,
                  width: 20,
                  height: 20,
                  color: white,
                )),
          ],
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        fillColor: darkBlue,
        filled: true,
        hintText: 'Search ...',
        hintStyle: Themes().subTitleStyleOPSmall,
      ),
    ),
  );
}
