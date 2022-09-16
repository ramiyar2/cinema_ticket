import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/selected_cinema.dart';
import '../theme/colors.dart';
import '../theme/theme.dart';

class SmallButton extends StatelessWidget {
  final Map<String, dynamic> cinemas;
  final int index;
  SmallButton({
    Key? key,
    required this.cinemas,
    required this.index,
  }) : super(key: key);
  final SelectedCinema _selectedCinema = Get.put(SelectedCinema());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
        onPressed: () {
          _selectedCinema.changeCinema(index);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              _selectedCinema.slecetedIndex.value == index
                  ? blue
                  : Colors.transparent),
          elevation: MaterialStateProperty.all(
              _selectedCinema.slecetedIndex.value == index ? 10 : 0),
          shadowColor: MaterialStateProperty.all<Color>(blue),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(color: blue, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cinemas['CinemaName'],
              style: Themes().cinemaBtn,
            ),
            Text(
              '  ${cinemas['location']}',
              style: Themes().ticketTitleWhite,
            ),
          ],
        ),
      ),
    );
  }
}
