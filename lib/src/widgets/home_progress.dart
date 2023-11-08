import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/src/controller/liquid_controller.dart';
import 'package:project_2/src/share_preference/preference_user.dart';

class HomeProgress extends StatelessWidget {
  const HomeProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCtrl = Get.find<LiquidController>();
    final prefs = PreferenciasUsuario();
    homeCtrl.porcent.value = prefs.porcent;
    return Obx(() => Text(
          "${homeCtrl.porcent} %",
          style: const TextStyle(
              fontSize: 60.0,
              color: Color.fromARGB(255, 246, 246, 246),
              fontWeight: FontWeight.w700),
          //     ),
          //     Padding(
          //         padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          //         child: Text(
          //           '${homeCtrl.less} ml',
          //           style: const TextStyle(
          //               fontSize: 30, color: Color.fromARGB(255, 231, 231, 231)),
          //         )),
          //   ],
        ));
    //  Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
  }
}
