import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          color: Theme.of(context).backgroundColor,
          padding:
              const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Get.isDarkMode ? logoLight : logoDark,
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    'Cinema Ticket',
                    style: Themes().headingStyle,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome ! \n Back',
                style: Themes().subHeadingStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Log in',
                style: Themes().importantInfo,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: darkBlue,
                      child: Image.asset(
                        userIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: darkBlue,
                      child: Image.asset(
                        userIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: darkBlue,
                      child: Image.asset(
                        userIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Divider(
                    color: bgWhite,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Text(
                      'OR',
                      style: Themes().subTitleStyleOP,
                    ),
                  ),
                  Divider(
                    color: bgWhite,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
