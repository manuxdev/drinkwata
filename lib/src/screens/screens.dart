import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:DrinkWata/src/controller/page-controller.dart';
import 'package:transitioned_indexed_stack/transitioned_indexed_stack.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';
////
import 'package:DrinkWata/src/screens/home.dart';
import 'package:DrinkWata/src/screens/water.dart';
import 'package:DrinkWata/src/screens/settings.dart';

class Screens extends StatelessWidget {
  Screens({super.key});
  final pageCtrl = Get.put(PagesController());
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PagesController>(builder: (controller) {
      return Scaffold(
        body: FadeIndexedStack(
          index: controller.tabIndex,
          duration: const Duration(milliseconds: 200),
          children: const [
            Home(),
            Water(),
            Settings(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 63, 182, 209),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.cloud),
                icon: Icon(Icons.cloud_outlined),
                label: '',
                tooltip: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.water_drop),
                icon: Icon(Icons.water_drop_outlined),
                label: '',
                tooltip: 'Water'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.settings),
                icon: Icon(Icons.settings_outlined),
                label: '',
                tooltip: 'Settings'),
          ],
        ),
        // buildBottonBar(controller),
      );
    });
  }
}
