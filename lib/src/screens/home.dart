import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/widgets/home_progress.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: HomeProgress(),
    );
  }
}
