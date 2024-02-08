import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shad_shop/consts/consts.dart';
import 'package:shad_shop/controllers/home_controller.dart';
import 'package:shad_shop/views/Account/account_screen.dart';
import 'package:shad_shop/views/CartScreen/cart_screen.dart';
import 'package:shad_shop/views/catagory/category_screen.dart';
import 'package:shad_shop/views/homeScreen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the controller
    var controller = Get.put(homeController());

    var navbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 26,
        ),
        label: categories,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 26,
        ),
        label: cart,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
        label: account,
      ),
    ];

    var navBody = [
      HomeScreen(),
      categoryScreen(),
      cartScreen(),
      accountScreen(),
    ];
    return Scaffold(
      body: Column(children: [
        Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            )),
      ]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(
            fontFamily: semibold,
          ),
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
