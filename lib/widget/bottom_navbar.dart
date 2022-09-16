import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

Container bottunNavigationBar() {
  return Container(
    color: Colors.transparent,
    child: SimpleShadow(
      opacity: 1,
      color: blue,
      offset: const Offset(0, 0),
      sigma: 10,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          selectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
                icon: SimpleShadow(
                  opacity: 1,
                  color: blue,
                  offset: const Offset(0, 0),
                  sigma: 10,
                  child: Image.asset(
                    homeIcon,
                    width: 30,
                    height: 25,
                    color: blue,
                  ),
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  ticketIconOutline,
                  width: 30,
                  height: 25,
                  color: white,
                ),
                label: 'ticket'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  bookmarkIconOutline,
                  width: 30,
                  height: 25,
                  color: white,
                ),
                label: 'bookmark'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  userIconOutline,
                  width: 30,
                  height: 25,
                  color: white,
                ),
                label: 'user'),
          ],
          currentIndex: 0,
          onTap: (index) {},
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: darkBlue,
        ),
      ),
    ),
  );
}
