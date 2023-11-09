import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:DrinkWata/src/screens/screens.dart';
import 'package:DrinkWata/src/screens/scroll_page.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';

import 'package:DrinkWata/src/controller/page-controller.dart';
// import 'package:DrinkWata/src/widgets/custon_animated_bar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pageCtrl = Get.put(PagesController());
  final prefs = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Components',
        debugShowCheckedModeBanner: false,
        initialRoute: prefs.weight == 0 ? 'scrollPage' : 'screens',
        routes: {
          'scrollPage': (BuildContext context) => ScrollPage(),
          'screens': (BuildContext context) => Screens(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              brightness: Brightness.dark,
              seedColor: const Color.fromARGB(255, 63, 182, 209)),
          useMaterial3: true,
        ),
        // theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: prefs.weight != 0 ? Screens() : ScrollPage());
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

