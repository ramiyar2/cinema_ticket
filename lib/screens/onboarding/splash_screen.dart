import 'package:cinema_ticket/auth/login.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:cinema_ticket/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.off(Login()));
    Future.delayed(const Duration(milliseconds: 300)).then((value) {
      setState(() {
        offsetIndex++;
      });
      Future.delayed(const Duration(milliseconds: 300)).then(
        (value) {
          setState(() {
            offsetIndex++;
          });
          Future.delayed(const Duration(milliseconds: 300)).then(
            (value) {
              setState(() {
                offsetIndex++;
              });
            },
          );
        },
      );
    });
    super.initState();
  }

  double offsetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: blueOop,
                                spreadRadius: 25,
                                blurRadius: 100,
                              ),
                            ],
                            shape: BoxShape.circle,
                          ),
                        ),
                        Image.asset(Get.isDarkMode ? logoLight : logoDark)
                      ],
                    ),
                  ),
                  Text(
                    'Cinema Tickect',
                    style: Themes().largeText,
                  ),
                ],
              ),
            ),
            SmoothIndicator(
              count: 4,
              offset: offsetIndex,
              effect: ExpandingDotsEffect(
                  dotColor: darkBlue,
                  activeDotColor: blue,
                  paintStyle: PaintingStyle.fill,
                  dotWidth: 10,
                  dotHeight: 10,
                  expansionFactor: 2),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
