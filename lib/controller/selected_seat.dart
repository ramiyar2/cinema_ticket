import 'package:get/get.dart';

class SelectedSeat extends GetxController {
  RxList slecetedIndex = [].obs;
  RxList removedIndex = [].obs;
  selectSeat({required int col, required int row}) {
    slecetedIndex.add(
      {'row': row, 'col': col},
    );
    print(slecetedIndex);
  }

  deleteSeat({required int col, required int row}) {
    print('delete called');
    slecetedIndex.remove(
      {'row': row, 'col': col},
    );
  }
}
