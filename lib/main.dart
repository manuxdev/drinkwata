import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
////
import 'package:project_2/src/pages/home.dart';
import 'package:project_2/src/pages/water.dart';
import 'package:project_2/src/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  // bool _isDarkTheme = false;
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1);
  final glbKey = GlobalKey();
  final List<Widget> _screens = [
    const Home(),
    const Water(),
    const Settings(),
  ];

  // Dispose the PageController
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Components',
        debugShowCheckedModeBanner: false,
        // theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          body: PageView(
              controller: _pageController,
              children: _screens,
              onPageChanged: (int pageIndex) {
                setState(() {
                  _currentIndex = pageIndex;
                });
              }),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 61, 61, 61),
            unselectedItemColor: Color.fromARGB(255, 246, 246, 246),
            selectedItemColor: Color.fromARGB(255, 63, 182, 209),
            key: glbKey,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              _pageController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: '', tooltip: 'hola'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.water_drop_outlined),
                  label: '',
                  tooltip: 'hola'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: '', tooltip: 'hola'),
            ],
          ),
        ));
  }
}
