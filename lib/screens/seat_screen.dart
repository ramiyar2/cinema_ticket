import 'package:cinema_ticket/model/seat_model.dart';
import 'package:flutter/material.dart';

import '../widget/custom_app_bar.dart';
import '../widget/seat_screen/date_selection.dart';
import '../widget/seat_screen/fotter.dart';
import '../widget/seat_screen/seat_selection.dart';
import 'test_data.dart';

class SeatScreen extends StatelessWidget {
  SeatScreen({Key? key}) : super(key: key);
  final SeatLayoutModel model = seatLayout;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10),
                  child: CustomAppBars.appBar4(),
                ),
                dateSelection(),
                seatSelection(model),
                seatFotter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
