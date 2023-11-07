import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:confetti/confetti.dart';
import 'package:project_2/src/controller/liquid_controller.dart';

class LiquidProgress extends StatelessWidget {
  const LiquidProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final waterCtrl = Get.find<LiquidController>();
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${waterCtrl.moreWater()} ml',
              style: const TextStyle(
                  fontSize: 80.0,
                  color: Color.fromARGB(255, 246, 246, 246),
                  fontWeight: FontWeight.w700),
            ),
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                child: Text(
                  '${waterCtrl.drinking} ml',
                  style: const TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 209, 209, 209)),
                )),
            FloatingActionButton(
              onPressed: () {
                waterCtrl.reset();
              },
              heroTag: null,
            )
          ],
        ));
  }
}
