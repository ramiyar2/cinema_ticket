import 'package:get/get.dart';

class SelectedCinema extends GetxController {
  RxInt slecetedIndex = 0.obs;
  changeCinema(int index) {
    slecetedIndex.value = index;
  }
}
