import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';
import 'package:DrinkWata/src/widgets/utils/weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightScroll extends StatelessWidget {
  const WeightScroll({super.key});

  @override
  Widget build(BuildContext context) {
    final waterCtrl = Get.find<LiquidController>();
    final prefs = PreferenciasUsuario();
    waterCtrl.weight.value = prefs.weight;

    return SizedBox(
      width: 50,
      height: 40,
      child: ListWheelScrollView.useDelegate(
          physics: const FixedExtentScrollPhysics(),
          itemExtent: 60,
          controller: FixedExtentScrollController(initialItem: prefs.weight),
          onSelectedItemChanged: (value) {
            waterCtrl.updateValue(value);
          },
          childDelegate: ListWheelChildBuilderDelegate(
              childCount: 401,
              builder: (context, index) => Weight(mins: index))),
    );
  }
}
