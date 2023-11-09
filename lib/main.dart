import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/pages/main_page.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';

// import 'package:DrinkWata/src/screens/scroll_page.dart';
////

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Components',
        debugShowCheckedModeBanner: false,
        home: MainPage());
  }
}
