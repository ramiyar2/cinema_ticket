import '../model/seat_model.dart';

final seatLayout = SeatLayoutModel(
  rows: 14, cols: 12,
  takedSeat: [
    {'row': 5, 'col': 2},
    {'row': 8, 'col': 2},
    {'row': 8, 'col': 3},
    {'row': 8, 'col': 8},
    {'row': 8, 'col': 10},
  ],
  //! for future when we add mor than one cinema and seat type cinema
  /*
  // gapIndex: [
  //   {'row': 1, 'col': 2},
  //   {'row': 1, 'col': 3},
  //   {'row': 1, 'col': 4},
  //   {'row': 1, 'col': 5},
  //   {'row': 1, 'col': 6},
  //   {'row': 2, 'col': 3},
  //   {'row': 2, 'col': 4},
  //   {'row': 2, 'col': 5},
  //   {'row': 2, 'col': 6},
  //   {'row': 3, 'col': 4},
  //   {'row': 3, 'col': 5},
  //   {'row': 3, 'col': 6},
  //   {'row': 4, 'col': 5},
  //   {'row': 4, 'col': 6},
  //   {'row': 5, 'col': 6},
  // ], 
  ? col > row
  // gapIndex: [
  //   {'row': 1, 'col': 1},
  //   {'row': 1, 'col': 2},
  //   {'row': 1, 'col': 3},
  //   {'row': 1, 'col': 4},
  //   {'row': 1, 'col': 5},
  //   {'row': 2, 'col': 1},
  //   {'row': 2, 'col': 2},
  //   {'row': 2, 'col': 3},
  //   {'row': 2, 'col': 4},
  //   {'row': 3, 'col': 1},
  //   {'row': 3, 'col': 2},
  //   {'row': 3, 'col': 3},
  //   {'row': 4, 'col': 1},
  //   {'row': 4, 'col': 2},
  //   {'row': 5, 'col': 1},
  // ],
  ? col < 5 - row
  */
);
