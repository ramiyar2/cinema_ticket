import 'package:cinema_ticket/auth/sign_up.dart';
import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:cinema_ticket/widget/logo_small.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';
import '../theme/theme.dart';
import '../widget/button_large.dart';
import '../widget/button_text.dart';
import '../widget/social_media.dart';
import '../widget/text_field.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).backgroundColor,
            padding:
                const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logoSmall(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome ! \nBack',
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
                socialMedia(),
                const SizedBox(
                  height: 20,
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
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  isPassward: false,
                  hint: 'Example@domin.com',
                  icon: mail,
                  textEditingController: emailController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  isPassward: true,
                  hint: 'Passward ...',
                  icon: lock,
                  textEditingController: passController,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Forget passward ?',
                  style: Themes().subTitleStyleOPSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                largeButton(
                  btnText: 'Log in',
                  function: () {
                    Get.off(const HomeScreen());
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I don\'t have account,',
                      style: Themes().subTitleStyleSmall,
                    ),
                    buttonText(
                      btnString: ' Create new',
                      function: () {
                        Get.to(SignUp());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
