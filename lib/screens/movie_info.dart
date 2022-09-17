import 'package:cinema_ticket/screens/seat_screen.dart';
import 'package:cinema_ticket/theme/colors.dart';
import 'package:cinema_ticket/widget/button_large.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';
import '../widget/buttom_small.dart';
import '../widget/trailer.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key}) : super(key: key);

  static const List<String> _starsImg = [
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
  ];
  static const List<Map<String, dynamic>> _cinemas = [
    {
      'CinemaName': 'Duhok',
      'location': 'Zaxo',
    },
    {
      'CinemaName': 'Duhok',
      'location': 'Duhok',
    },
    {
      'CinemaName': 'Duhok',
      'location': 'Domiz',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              trailer(),
              Center(
                child: Text(
                  'Game of Thrones',
                  style: Themes().subTitleStyle,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  ' 2011  •  Action | Adventure | Drama  •  120 min ',
                  style: Themes().bodyStyleOP,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                child: Text(
                  'The story',
                  style: Themes().subTitleStyle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'Nine noble families battle each other for control of the mythical land of Westeros, while an ancient enemy lurks behind them that has been hidden for thousands of years.',
                  style: Themes().bodyStyle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Show in',
                  style: Themes().subTitleStyle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  height: 50,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                            width: 100,
                            height: 40,
                            child: SmallButton(
                              cinemas: _cinemas[index],
                              index: index,
                            ));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                      itemCount: _cinemas.length),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Director',
                  style: Themes().subTitleStyle,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: largeButton(
                    btnText: 'Get your ticket ',
                    function: () {
                      Get.to(SeatScreen());
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  'Starts',
                  style: Themes().subTitleStyle,
                ),
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.only(left: 10),
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 60,
                        margin: const EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: blueOP,
                                offset: const Offset(0, 0),
                                spreadRadius: 5,
                                blurRadius: 10,
                              ),
                            ],
                            image: DecorationImage(
                                image: NetworkImage(_starsImg[index]),
                                fit: BoxFit.cover)),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    itemCount: _starsImg.length),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
