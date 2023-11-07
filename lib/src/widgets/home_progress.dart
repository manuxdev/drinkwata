import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/src/controller/liquid_controller.dart';

class HomeProgress extends StatelessWidget {
  const HomeProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCtrl = Get.find<LiquidController>();
    return
        //  Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        const Text(
      //${homeCtrl.porcentValue()}
      " %",
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
    );
  }
}
