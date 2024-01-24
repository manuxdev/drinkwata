import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:DrinkWata/src/share_preference/preference_user.dart';
import 'package:DrinkWata/src/controller/liquid_controller.dart';

import 'package:DrinkWata/src/screens/screens.dart';
import 'package:DrinkWata/src/screens/scroll_page.dart';


class MainPage extends StatelessWidget {
  MainPage({super.key});
  final hola = Get.put(LiquidController());
  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    final themeCtrl = Get.find<LiquidController>();
    themeCtrl.theme.value = prefs.theme;
    return Obx(() => MaterialApp(
            title: 'Components',
            debugShowCheckedModeBanner: false,
            initialRoute: prefs.weight == 0 ? 'scrollPage' : 'screens',
            routes: {
              'scrollPage': (BuildContext context) => ScrollPage(),
              'screens': (BuildContext context) => Screens(),
            },
            theme: themeCtrl.theme.value
                ? ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                        brightness: Brightness.dark,
                        seedColor: const Color.fromARGB(255, 63, 182, 209)),
                    useMaterial3: true,
                  )
                : ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                        brightness: Brightness.light,
                        seedColor: const Color.fromARGB(255, 63, 182, 209)),
                    useMaterial3: true,
                  ),
            home: prefs.weight != 0 ? Screens() : ScrollPage())
        //
        );
  }
}
