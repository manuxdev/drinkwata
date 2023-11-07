import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_2/src/pages/main_page.dart';

// import 'package:project_2/src/pages/main_page.dart';
// import 'package:project_2/src/screens/scroll_page.dart';
////

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'main',
        routes: {'main': (BuildContext context) => MainPage()},
        title: 'Components',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        // theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: MainPage());
  }
}
