import 'package:get/get.dart';

class SelectedSeat extends GetxController {
  RxList slecetedIndex = [
    {'row': 10, 'col': 6},
  ].obs;
  changeCinema(int col, int row, String table) {
    slecetedIndex.add(
      {
        {'row': row, 'col': col, 'table': table}
      },
    );
  }
}
