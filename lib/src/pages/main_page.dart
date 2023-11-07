import 'package:flutter/material.dart';
import 'package:get/get.dart';

////
import 'package:project_2/src/screens/home.dart';
import 'package:project_2/src/screens/water.dart';
import 'package:project_2/src/screens/settings.dart';
import 'package:project_2/src/controller/page-controller.dart';
// import 'package:project_2/src/widgets/custon_animated_bar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pageCtrl = Get.put(PagesController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PagesController>(builder: (controller) {
      return MaterialApp(
          title: 'Components',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(useMaterial3: true),
          // theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
          home: Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: [Home(), Water(), Settings()],
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
          ));
    });
  }
}

// Widget buildBottonBar(controller) {
//   return CustomAnimatedBottomBar(
//     containerHeight: 60,
//     selectedIndex: controller.tabIndex,
//     onItemSelected: controller.changeTabIndex,
//     showElevation: true,
//     itemCornerRadius: 24,
//     curve: Curves.easeIn,
//     items: <BottomNavyBarItem>[
//       BottomNavyBarItem(
//           icon: const Icon(Icons.home),
//           title: const Text("Home"),
//           activeColor: Colors.blue,
//           textAlign: TextAlign.center),
//       BottomNavyBarItem(
//           icon: const Icon(Icons.water_drop_outlined),
//           title: const Text("Water"),
//           activeColor: Colors.blue,
//           textAlign: TextAlign.center),
//       BottomNavyBarItem(
//           icon: const Icon(Icons.person),
//           title: const Text("Perfil"),
//           activeColor: Colors.blue,
//           textAlign: TextAlign.center),
//     ],
//   );

