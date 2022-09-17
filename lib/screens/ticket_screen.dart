import 'package:cinema_ticket/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../widget/ticket_screen/fotter.dart';
import '../widget/ticket_screen/tickect.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: CustomAppBars.appBar4(),
              ),
              tickect(),
              bartickect(context),
              fotter(),
            ],
          ),
        ),
      ),
    );
  }
}
