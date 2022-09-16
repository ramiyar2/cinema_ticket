import 'package:cinema_ticket/theme/theme.dart';
import 'package:cinema_ticket/widget/button_text.dart';
import 'package:cinema_ticket/widget/movie_cover.dart';
import 'package:cinema_ticket/widget/movie_trind.dart';
import 'package:flutter/material.dart';

import '../widget/custom_app_bar.dart';
import '../widget/search.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<String> _trendMove = [
    'http://placeimg.com/348/200/people',
    'https://img.xcitefun.net/users/2014/07/362078,xcitefun-nature-beauty-9.jpg',
    'https://th.bing.com/th/id/R.10fea7734f8e1e406965c51b7c511b12?rik=NA%2bXqdteJnkrTg&pid=ImgRaw&r=0',
  ];
  final List<String> _nowShowingMove = [
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
  ];
  final List<String> _comingMove = [
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: CustomAppBars.appBar1(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: searchBox(),
          ),
          TrendingMovie(trendingMovieCover: _trendMove),
          title('New Showing', () {}),
          moiveCovers(_nowShowingMove),
          title('Up coming', () {}),
          moiveCovers(_comingMove),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Container moiveCovers(List<String> list) {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      height: 200,
      child: movies(list),
    );
  }

  Padding title(String title, Function() function) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Themes().subTitleStyle,
          ),
          buttonText(
            btnString: 'see all',
            function: function,
          ),
        ],
      ),
    );
  }
}
