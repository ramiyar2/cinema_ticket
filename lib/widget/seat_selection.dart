import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/selected_seat.dart';
import '../model/seat_model.dart';
import '../theme/colors.dart';

Obx seatSelection(SeatLayoutModel model) {
  final SelectedSeat selectedSeat = Get.put(SelectedSeat());
  return Obx(
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
                  //? seat design (invield)
                  for (var element in model.takedSeat) {
                    if (col == element['col'] - 1 &&
                        row == element['row'] - 1) {
                      return Padding(
                        padding: col == 6
                            ? const EdgeInsets.only(top: 11, left: 20)
                            : const EdgeInsets.only(top: 11, left: 13),
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: darkBlue,
                          ),
                        ),
                      );
                    }
                  }
                  //? seat design (selected)
                  for (var element in selectedSeat.slecetedIndex) {
                    if (col == element['col'] - 1 &&
                        row == element['row'] - 1) {
                      return Padding(
                        padding: col == 6
                            ? const EdgeInsets.only(top: 11, left: 20)
                            : const EdgeInsets.only(top: 11, left: 13),
                        child: InkWell(
                          onTap: () => selectedSeat.deleteSeat(
                              col: col + 1, row: row + 1),
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: blue,
                            ),
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
                    child: InkWell(
                      onTap: () =>
                          selectedSeat.deleteSeat(col: col + 1, row: row + 1),
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: blue,
                            )),
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
  );
}
