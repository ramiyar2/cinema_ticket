class SeatLayoutModel {
  final int rows;
  final int cols;
  final List<Map<String, dynamic>> takedSeat;
  //! for future when we add mor than one cinema and seat type cinema
  List<Map<String, dynamic>>? gapIndex;
  SeatLayoutModel({
    required this.rows,
    required this.cols,
    required this.takedSeat,
    this.gapIndex,
  });
}
