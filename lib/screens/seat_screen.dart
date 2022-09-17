import 'package:cinema_ticket/model/seat_model.dart';
import 'package:flutter/material.dart';

import '../widget/seat_selection.dart';
import 'test_data.dart';

class SeatScreen extends StatelessWidget {
  SeatScreen({Key? key}) : super(key: key);
  final SeatLayoutModel model = seatLayout;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            seatSelection(model),
          ],
        ),
      ),
    );
  }
}
