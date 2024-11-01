import 'package:get/get.dart';

class ScreenChanger extends GetxController {
  // Observable variable for current index
  RxInt currentIndex = 0.obs;
  RxInt itemsInCart= 0.obs;
  void addItem()
  {
    itemsInCart.value++;
  }

  // Method to change index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
