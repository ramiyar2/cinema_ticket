import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/theme/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
        top: 20,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('http://placeimg.com/50/50/people'))),
              child: null,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Ram'),
          const SizedBox(
            height: 40,
          ),
          settinges('Setting 1'),
          settinges('Setting 2'),
          settinges('Setting 3'),
          settinges('Setting 4'),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Developed By  ',
                style: Themes().subTitleStyleOPSmall,
              ),
              Text(
                'Ramiyar Yusf',
                style: Themes().subTitleStyleSmall,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Container settinges(String name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: darkBlue,
        border: Border.all(
          width: 1,
          color: blue,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            userIconOutline,
            width: 25,
            height: 25,
            color: white,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            name,
            style: Themes().subTitleStyle,
          )
        ],
      ),
    );
  }
}
