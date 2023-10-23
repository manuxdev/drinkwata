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
  final List<Widget> _screens = [
    const Glass(),
    const Home(),
    const Noti(),
  ];

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
                icon: Icon(
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                child: IconButton(
                  splashRadius: 40,
                  icon: Icon(
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
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
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
