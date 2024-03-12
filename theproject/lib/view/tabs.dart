import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theproject/view/home.dart';
import '../controller/nav_controller.dart';
import './saved.dart';
import '../view/profile/my_profile.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavController(), permanent: true);

    return Scaffold(
      bottomNavigationBar: GetBuilder<BottomNavController>(
        builder: (controller) {
          return CurvedNavigationBar(
            items: [
              Icon(
                Icons.person_pin,
                color: controller.indexval == 0 ? Colors.blue : Colors.black,
                size: 30,
              ),
              Icon(
                Icons.home,
                size: 30,
                color: controller.indexval == 1 ? Colors.blue : Colors.black,
              ),
              Icon(
                Icons.favorite,
                size: 30,
                color: controller.indexval == 2 ? Colors.blue : Colors.black,
              ),
            ],
            backgroundColor: Colors.blue,
            index: controller.indexval,
            onTap: (index) {
              controller.changeIndex(index);
              /*  controller.indexval == 0
                  ? Get.offAll(const PesonnalPage(),
                      duration: const Duration(seconds: 1))
                  : controller.indexval == 2
                      ? Get.offAll(const SavedCities(),
                          duration: const Duration(seconds: 1))
                      : Get.offAll(const HomePage(),
                          duration: const Duration(seconds: 1));*/
            },
          );
        },
      ),
      body: GetBuilder<BottomNavController>(builder: (controller) {
        return controller.indexval == 0
            ? const MyProfile()
            : controller.indexval == 2
                ? const SavedCities()
                : const HomePage();
      }),
    );
  }
}
