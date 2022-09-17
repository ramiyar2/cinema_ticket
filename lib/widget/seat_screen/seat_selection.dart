import 'package:cinema_ticket/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/selected_seat.dart';
import '../../model/seat_model.dart';
import '../../theme/colors.dart';

seatSelection(SeatLayoutModel model) {
  final SelectedSeat selectedSeat = Get.put(SelectedSeat());
  return Center(
    child: Stack(
      children: [
        timeSelection(),
        Image.asset('assets/img/screen.png'),
        Obx(
          () => Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
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
                                  child: Center(
                                    child: Text(
                                      '${String.fromCharCode(65 + row)}  ${col + 1}',
                                      style: const TextStyle(
                                          fontSize: 4, color: Colors.white30),
                                    ),
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
                                      boxShadow: [
                                        BoxShadow(
                                            color: blue,
                                            blurRadius: 10,
                                            spreadRadius: 1)
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${String.fromCharCode(65 + row)}  ${col + 1}',
                                        style: TextStyle(
                                            fontSize: 4, color: white),
                                      ),
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
                              onTap: () => selectedSeat.selectSeat(
                                  col: col + 1, row: row + 1),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                    color: blue,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '${String.fromCharCode(65 + row)}  ${col + 1}',
                                    style: TextStyle(
                                        fontSize: 4, color: ticketWhiteOp),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(20),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: darkBlue,
                        ),
                        child: null),
                    Text(
                      'Not available',
                      style: Themes().ticketTitleWhite,
                    ),
                    Container(
                        margin: const EdgeInsets.all(20),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                            color: blue,
                          ),
                        ),
                        child: null),
                    Text(
                      'Available',
                      style: Themes().ticketTitleWhite,
                    ),
                    Container(
                        margin: const EdgeInsets.all(20),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: blue,
                          boxShadow: [
                            BoxShadow(
                                color: blue, blurRadius: 10, spreadRadius: 1)
                          ],
                        ),
                        child: null),
                    Text(
                      'Select',
                      style: Themes().ticketTitleWhite,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget timeSelection() {
  return Padding(
    padding: const EdgeInsets.only(
      right: 40,
      left: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        time('10', '30 PM', 1),
        time('10', '30 PM', 2),
        time('10', '30 PM', 3),
        time('10', '30 PM', 4),
        time('10', '30 PM', 5),
      ],
    ),
  );
}

Widget time(String h, String m, int n) {
  return Column(
    children: [
      Text(
        h,
        style: n == 3 ? Themes().subTitleStyle : Themes().subTitleStyleOP,
      ),
      Text(
        m,
        style: n == 3
            ? Themes().subTitleStyleSmall
            : Themes().subTitleStyleOPSmall,
      ),
    ],
  );
}
