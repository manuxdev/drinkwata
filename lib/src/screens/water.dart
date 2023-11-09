import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/widgets/liquid_progress.dart';

class Water extends StatelessWidget {
  const Water({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final waterCtrl = Get.put(LiquidController());
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: MediaQuery.of(context).size.height / 6),
      const Text(
        "Current Hydration",
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      const SizedBox(height: 50),
      SizedBox(
        // width: 300.0,
        // height: 300.0,
        child: Column(
          children: [
            const LiquidProgress(),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))))),
                  onPressed: () {
                    waterCtrl.waterLess(0);
                  },
                  child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 30.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.coffee_outlined,
                          ),
                          Text(" Coffe")
                        ],
                      )),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))))),
                  onPressed: () {
                    waterCtrl.waterLess(1);
                  },
                  child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 30.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sports_bar_outlined,
                          ),
                          Text(" Coffe")
                        ],
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))))),
                    onPressed: () {
                      waterCtrl.waterLess(2);
                    },
                    child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 30.0),
                        child: Row(
                          children: [
                            Icon(Icons.blender_outlined),
                            Text(" Coffe")
                          ],
                        )),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))))),
                    onPressed: () {
                      waterCtrl.waterLess(3);
                    },
                    child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                        child: Row(
                          children: [
                            Icon(Icons.blender_outlined),
                            Text(" Coffe")
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
