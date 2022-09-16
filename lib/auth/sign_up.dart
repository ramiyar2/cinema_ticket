import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';
import '../widget/button_large.dart';
import '../widget/button_text.dart';
import '../widget/social_media.dart';
import '../widget/text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController userController = TextEditingController();

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
            padding: const EdgeInsets.only(
              top: 40,
              right: 20,
              left: 20,
            ),
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
                  'Hello \nawesome !',
                  style: Themes().subHeadingStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign up',
                  style: Themes().importantInfo,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SocialMedia(),
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
                  hint: 'Name',
                  icon: userIcon,
                  textEditingController: userController,
                ),
                const SizedBox(
                  height: 15,
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
                  height: 20,
                ),
                LargeButton(
                  btnText: 'Sign up',
                  function: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'privacy policy. I have account,',
                      style: Themes().subTitleStyleSmall,
                    ),
                    ButtonText(
                      btnString: ' Log in',
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
