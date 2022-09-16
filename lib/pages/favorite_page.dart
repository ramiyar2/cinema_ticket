import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widget/custom_app_bar.dart';
import '../widget/search.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);

  final List<String> _favMovie = [
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
    'http://placeimg.com/110/200/people',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBars.appBar1(),
            const SizedBox(
              height: 20,
            ),
            searchBox(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Favorite',
              style: Themes().subTitleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: _favMovie.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(_favMovie[index]),
                        fit: BoxFit.cover),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
