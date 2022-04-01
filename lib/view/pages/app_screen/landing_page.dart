import 'package:efood/view/pages/app_screen/home_page.dart';
import 'package:efood/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var bottomTabbarIndex = 0.obs;

    void changeTabIndex(int index) {
      bottomTabbarIndex.value = index;
    }

    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: bottomTabbarIndex.value,
          children: const [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: changeTabIndex,
          currentIndex: bottomTabbarIndex.value,
          backgroundColor: mainBG,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: mainColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.widgets_outlined,
              ),
              label: 'Menu',
              
            ),
          ],
        ),
      ),
    );
  }
}