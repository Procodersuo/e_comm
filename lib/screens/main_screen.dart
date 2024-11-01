import 'package:e_comm/getx/bottom_app_bar_screen_changer.dart';
import 'package:e_comm/screens/cart_screen.dart';
import 'package:e_comm/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  static const id = "MainScreen";

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Use Get.find to retrieve the controller
    final ScreenChanger myGetXController = Get.put(ScreenChanger());

    return Scaffold(
      body: Obx(
            () => myGetXController.currentIndex.value == 0
            ? const HomeScreen()
            : const CartScreen(),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: myGetXController.currentIndex.value,
          onTap: (index) {
            myGetXController.changeIndex(index);
            if(index==1)
              {
                myGetXController.itemsInCart.value=0;
              }
          },
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Badge.count(
                count: myGetXController.itemsInCart.value, // Ensure this observable exists
                child: const Icon(Icons.shopping_cart_sharp),
              ),
              label: "Cart",
            ),
          ],
        ),
      ),
    );
  }
}
