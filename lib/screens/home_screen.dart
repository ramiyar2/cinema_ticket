import 'package:cinema_ticket/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../theme/colors.dart';
import '../theme/icons.dart';

//import '../widget/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController(
    initialPage: 0,
  );
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      bottomNavigationBar: bottunNavigationBar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).backgroundColor,
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: PageView(
            controller: pageController,
            children: <Widget>[
              HomePage(),
            ],
            onPageChanged: (pageIndex) =>
                setState(() => selectedPage = pageIndex),
          ),
        ),
      ),
    );
  }

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
              selectedPage == 0
                  ? _slectBottomNavbar(homeIcon, 'home Page')
                  : _bottomNavbar(homeIconOutline, 'home Page'),
              selectedPage == 1
                  ? _slectBottomNavbar(ticketIcon, 'tickets page')
                  : _bottomNavbar(ticketIconOutline, 'tickets page'),
              selectedPage == 2
                  ? _slectBottomNavbar(bookmarkIcon, 'favorite page')
                  : _bottomNavbar(bookmarkIconOutline, 'favorite page'),
              selectedPage == 3
                  ? _slectBottomNavbar(userIcon, 'user page')
                  : _bottomNavbar(userIconOutline, 'user page'),
            ],
            currentIndex: 0,
            onTap: (index) {
              setState(() {
                selectedPage = index;
                pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              });
            },
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: darkBlue,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _slectBottomNavbar(String icon, String label) {
    return BottomNavigationBarItem(
        icon: SimpleShadow(
          opacity: 1,
          color: blue,
          offset: const Offset(0, 0),
          sigma: 10,
          child: Image.asset(
            icon,
            width: 30,
            height: 25,
            color: blue,
          ),
        ),
        label: label);
  }

  BottomNavigationBarItem _bottomNavbar(String icon, String label) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          icon,
          width: 30,
          height: 25,
          color: white,
        ),
        label: label);
  }
}
