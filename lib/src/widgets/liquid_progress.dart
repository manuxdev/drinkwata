import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:confetti/confetti.dart';
import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';

class LiquidProgress extends StatelessWidget {
  const LiquidProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final waterCtrl = Get.find<LiquidController>();
    final prefs = PreferenciasUsuario();
    waterCtrl.drinking.value = prefs.drinking;
    waterCtrl.less.value = prefs.less;
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            waterCtrl.less > 0
                ? Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 95, 0, 30),
                    child: Text(
                      '${waterCtrl.less} ml',
                      style: const TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.w700),
                    ),
                  )
                : const Icon(
                    Icons.check_circle_outline,
                    size: 300,
                    color: Color.fromARGB(255, 63, 182, 209),
                  ),
            waterCtrl.less > 0
                ? Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 90),
                    child: Text(
                      '${waterCtrl.drinking} ml',
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ))
                : Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Text(
                      '${waterCtrl.drinking} ml',
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    )),
          ],
        ));
  }
}
