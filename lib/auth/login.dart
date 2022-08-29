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
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 50,
            color: Theme.of(context).backgroundColor,
            padding:
                const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 30),
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
                Text(
                  'Welcome ! \n Back',
                  style: Themes().subHeadingStyle,
                ),
                Text(
                  'Log in',
                  style: Themes().importantInfo,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: darkBlue,
                        child: Image.asset(
                          facebook,
                          width: 25,
                          height: 25,
                          color: white,
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
                          twitter,
                          width: 25,
                          height: 25,
                          color: white,
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
                          google,
                          width: 25,
                          height: 25,
                          color: white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: whiteOp,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Text(
                        'OR',
                        style: Themes().subTitleStyleSmall,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: whiteOp,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                customTextField(false, 'Example@domin.com', mail),
                const SizedBox(
                  height: 15,
                ),
                customTextField(true, 'Passward ...', lock),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Forget passward ?',
                  style: Themes().subTitleStyleOPSmall,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(blue),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              'Log in',
                              style: Themes().headingStyle,
                            ),
                          ),
                        ),
                        Image.asset(
                          arrow,
                          width: 25,
                          height: 30,
                          color: white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I don\'t have account,',
                      style: Themes().subTitleStyleSmall,
                    ),
                    GestureDetector(
                        child: Text(
                      ' Create new',
                      style: Themes().subTitleStyleSmall,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField customTextField(bool isPassward, String hint, String icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  icon,
                  width: 25,
                  height: 25,
                  color: white,
                )),
          ],
        ),
        suffixIcon: isPassward
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  GestureDetector(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.asset(
                          closedEye,
                          width: 25,
                          height: 25,
                          color: white,
                        )),
                  ),
                ],
              )
            : null,
        hintStyle: Themes().subTitleStyleOPSmall,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
