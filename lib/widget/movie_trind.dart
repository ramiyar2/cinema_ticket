import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_ticket/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TrendingMovie extends StatefulWidget {
  final List<String> trendingMovieCover;
  const TrendingMovie({Key? key, required this.trendingMovieCover})
      : super(key: key);

  @override
  State<TrendingMovie> createState() => _TrendingMovieState();
}

class _TrendingMovieState extends State<TrendingMovie> {
  int activeIndex = 0;
  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _carouselController,
          itemCount: widget.trendingMovieCover.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 200,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(widget.trendingMovieCover[index]),
                  fit: BoxFit.cover,
                  opacity: index == activeIndex ? 1.0 : 0.5,
                ),
              ),
              child: null,
            );
          },
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: 200,
              viewportFraction: 0.80,
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
        ),
        const SizedBox(
          height: 15,
        ),
        AnimatedSmoothIndicator(
          count: widget.trendingMovieCover.length,
          onDotClicked: (index) => _carouselController.animateToPage(index,
              duration: const Duration(microseconds: 500),
              curve: Curves.easeIn),
          effect: ExpandingDotsEffect(
              dotColor: darkBlue,
              activeDotColor: blue,
              paintStyle: PaintingStyle.fill,
              dotWidth: 7,
              dotHeight: 7,
              expansionFactor: 2),
          activeIndex: activeIndex,
        ),
      ],
    );
  }
}
