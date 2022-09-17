import 'package:cinema_ticket/model/seat_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/selected_seat.dart';
import 'test_data.dart';

class SeatScreen extends StatelessWidget {
  SeatScreen({Key? key}) : super(key: key);
  final SeatLayoutModel model = seatLayout;
  final SelectedSeat _selectedSeat = Get.put(SelectedSeat());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Obx(
          () => Column(
            children: [
              ...List.generate(
                model.rows,
                (row) => Wrap(
                  children: [
                    ...List.generate(
                      model.cols,
                      (col) {
                        //! for future when we add mor than one cinema and seat type cinema
                        /*
                            // for (var element in model.gapIndex) {
                            //   if (col == element['col'] - 1 &&
                            //       row == element['row'] - 1) {
                            //     print('row = $row , rowBreaks = ${element['row']}');
                            //     print('col = $col , rowCol = ${element['col']}');
                            //     return Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Container(
                            //         width: 15,
                            //         height: 15,
                            //       ),
                            //     );
                            //   }
                            // }
                          */
                        //! that is enough  for now
                        //? seat design (no seats )
                        if (!(col > 4 - row && col <= row + 5 + 1)) {
                          return const Padding(
                            padding: EdgeInsets.only(top: 11, left: 13),
                            child: SizedBox(
                              width: 15,
                              height: 15,
                            ),
                          );
                        }
                        //? seat design (taked)
                        for (var element in model.takedSeat) {
                          if (col == element['col'] - 1 &&
                              row == element['row'] - 1) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 11, left: 13),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.green,
                                ),
                              ),
                            );
                          }
                        }

                        for (var element in _selectedSeat.slecetedIndex) {
                          if (col == element['col'] - 1 &&
                              row == element['row'] - 1) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 11, left: 13),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Colors.blueAccent,
                                ),
                              ),
                            );
                          }
                        }
                        //? seat design (avalabile)
                        return Padding(
                          padding: col == 6
                              ? const EdgeInsets.only(top: 11, left: 20)
                              : const EdgeInsets.only(top: 11, left: 13),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.red,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
