import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';

class HomeProgress extends StatelessWidget {
  const HomeProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCtrl = Get.find<LiquidController>();
    final prefs = PreferenciasUsuario();
    homeCtrl.porcent.value = prefs.porcent;
    return Obx(() => Text(
          "${homeCtrl.porcent} %",
          style: const TextStyle(fontSize: 60.0, fontWeight: FontWeight.w700),
        ));
  }
}
