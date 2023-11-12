import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:DrinkWata/src/widgets/setting_modal.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prefs = PreferenciasUsuario();
    final waterCtrl = Get.find<LiquidController>();
    waterCtrl.theme.value = prefs.theme;
    return Obx(
      () => Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40, 5, 40, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Theme',
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                  // This bool value toggles the switch.
                  value: waterCtrl.theme.value,
                  activeColor: const Color.fromARGB(255, 63, 182, 209),
                  inactiveTrackColor: const Color.fromARGB(255, 124, 124, 124),
                  inactiveThumbColor: const Color.fromARGB(255, 63, 182, 209),
                  onChanged: (value) {
                    waterCtrl.changeTheme(value);
                  },
                )
              ],
            ),
          ),
          const Divider(
            indent: 40,
            endIndent: 40,
            height: 10,
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 5, 40, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Weight',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_drop_up,
                          size: 30,
                        ),
                        Icon(Icons.arrow_drop_down, size: 30)
                      ],
                    ),
                    WeightScroll(),
                    Text(
                      "Kg",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            indent: 40,
            endIndent: 40,
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(34, 5, 40, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    waterCtrl.reset();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            indent: 40,
            endIndent: 40,
            height: 10,
          ),
        ],
      ),
    );
  }
}
