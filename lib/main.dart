import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_2/src/pages/glass.dart';
// import 'package:project_2/src/pages/glass.dart';
import 'package:project_2/src/pages/home.dart';
import 'package:project_2/src/pages/notification.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 1;
  bool _isDarkTheme = false;
  final PageController _pageController =
      PageController(initialPage: 1, viewportFraction: 1);
  final glbKey = GlobalKey();
  final List<Widget> _screens = [
    const Glass(),
    const Home(),
    const Noti(),
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
        theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: Text(
              'DrinkWata',
              style:
                  TextStyle(fontSize: 30, color: Theme.of(context).canvasColor),
            ),
            actions: [
              IconButton(
                splashRadius: 40,
                icon: const Icon(
                  Icons.sunny,
                  color: Color.fromARGB(239, 241, 239, 239),
                  size: 24,
                ),
                onPressed: () {
                  setState(() {
                    _isDarkTheme = !_isDarkTheme;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                child: IconButton(
                  splashRadius: 40,
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    color: Color.fromARGB(239, 241, 239, 239),
                    size: 24,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
            centerTitle: false,
            elevation: 10,
          ),
          body: PageView(
              controller: _pageController,
              children: _screens,
              onPageChanged: (int pageIndex) {
                setState(() {
                  _currentIndex = pageIndex;
                });
              }),
          bottomNavigationBar: BottomNavigationBar(
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
                icon: Icon(Icons.blender_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.water_drop_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.alarm_add_sharp),
                label: '',
              ),
            ],
          ),
        ));
  }
}
